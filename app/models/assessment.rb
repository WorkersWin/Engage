class Assessment < ApplicationRecord
  belongs_to :assessment_level
  belongs_to :assessor, class_name: 'Contact'
  belongs_to :assessee, class_name: 'Contact'
  validates :assessed_on, presence: true
  validates :assessee, comparison: { other_than: :assessor, message: "and Assessor cannot be the same person" }



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

end
