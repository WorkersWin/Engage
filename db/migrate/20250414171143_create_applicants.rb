class CreateApplicants < ActiveRecord::Migration[8.0]
  def change
    create_table :applicants do |t|
      t.string :first_name
      t.string :last_name
      t.string :pronouns
      t.string :preferred_language
      t.string :personal_email
      t.string :personal_cell_phone
      t.string :work_username
      t.string :job_title
      t.string :job_level
      t.string :work_location_code
      t.text :note

      t.timestamps
    end
  end
end
