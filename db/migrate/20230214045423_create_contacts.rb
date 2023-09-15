class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :pronouns
      t.string :mobile_phone
      t.string :personal_email
      t.string :work_username
      t.string :work_email

      t.timestamps
    end
  end
end
