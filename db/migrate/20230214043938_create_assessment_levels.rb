class CreateAssessmentLevels < ActiveRecord::Migration[7.0]
  def change
    create_table :assessment_levels do |t|
      t.string :level
      t.text :description

      t.timestamps
    end
  end
end
