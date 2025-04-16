class CreateEmploymentTypes < ActiveRecord::Migration[8.0]
  def change
    create_table :employment_types do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
