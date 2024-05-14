class Assessment < ApplicationRecord
  belongs_to :assessment_level

  belongs_to :assessor, class_name: 'Contact'
  belongs_to :assessee, class_name: 'Contact'

  has_one :note

  validates :assessed_on, presence: true
  validates :assessee, comparison: { other_than: :assessor, message: "and Assessor cannot be the same person" }

  scope :most_recent, -> { order(assessed_on: :desc) }
  scope :current, -> { most_recent.limit(1) }


  def self.current_assessments
    sql_command = <<-SQL
      select t.assessment_level_id, t.level, count(*)
      from (
        select a.assessee_id, a.assessed_on, a.assessment_level_id, al.level
        from assessment_levels al, assessments a
        inner join (
          select assessee_id, max(assessed_on) as maxdate
          from assessments
          group by assessee_id
        ) b on a.assessee_id = b.assessee_id and a.assessed_on = b.maxdate
        where a.assessment_level_id = al.id
      ) t
      group by t.assessment_level_id
    SQL

    connection.execute(
      sanitize_sql([sql_command])
    )
  end

  def self.assessment_levels_to_date(target_date)
    puts "TARGET DATE = "
    puts target_date
    puts " END"
    sql_command = <<-SQL
      select t.assessment_level_id, t.level, count(*)
      from (
        select a.assessee_id, a.assessed_on, a.assessment_level_id, al.level
        from assessment_levels al, assessments a
        inner join (
          select assessee_id, max(assessed_on) as maxdate
          from assessments
            where assessed_on <= ?
          group by assessee_id
        ) b on a.assessee_id = b.assessee_id and a.assessed_on = b.maxdate
        where a.assessment_level_id = al.id
      ) t
      group by t.assessment_level_id
    SQL

  connection.execute(
    sanitize_sql([sql_command, target_date])
  )
  end

end
