class CreateAssessments < ActiveRecord::Migration[7.0]
  def change
    create_table :assessments do |t|
      t.date :assessed_on
      t.references :assessment_level, null: false, foreign_key: true
      t.references :assessor, null: false, foreign_key: { to_table: :contacts }
      t.references :assessee, null: false, foreign_key: { to_table: :contacts }

      t.timestamps
    end
  end
end
