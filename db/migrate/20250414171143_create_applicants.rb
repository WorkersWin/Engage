class CreateApplicants < ActiveRecord::Migration[8.0]
  def change
    create_table :applicants do |t|
      t.string :first_name
      t.string :last_name
      t.string :pronouns
      t.string :preferred_language
      t.string :birthday
      t.string :tshirt_size
      t.string :personal_email_address
      t.string :personal_phone
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :postal_code
      t.string :country
      t.boolean :sms_updates, null: false, default: true
      
      t.string :job_title
      t.string :job_level
      t.string :team_name
      t.string :organization
      t.string :department
      t.string :campus
      t.string :work_location_code
      t.boolean :direct_reports, null: false, default: false
      t.string :work_email_address
      t.text :note
      t.references :user, null: true
      t.references :employment_type
      # t.references :employer

      t.timestamps
    end
  end
end
