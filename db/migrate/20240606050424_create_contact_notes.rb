class CreateContactNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :contact_notes do |t|
      t.references :contacts, null: false, foreign_key: true
      t.references :notes, null: false, foreign_key: true

      t.timestamps
    end
  end
end
