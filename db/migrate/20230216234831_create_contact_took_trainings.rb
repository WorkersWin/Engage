class CreateContactTookTrainings < ActiveRecord::Migration[7.0]
  def change
    create_table :contact_took_trainings do |t|
      t.date :trained_on
      t.references :contact, null: false, foreign_key: true
      t.references :training, null: false, foreign_key: true

      t.timestamps
    end
  end
end
