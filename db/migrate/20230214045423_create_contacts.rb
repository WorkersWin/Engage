class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :pronouns
      t.string :preferred_language
      t.string :work_username, null: false, default: "FIX ME"
      t.string :mobile_phone
      t.string :personal_email
      t.string :work_email
      t.string :discord_username
      t.string :signal_username
      t.references :job_title, null: true, foreign_key: true
      t.references :job_level, null: true, foreign_key: true

      t.timestamps
    end
  end
end
