json.extract! applicant, :id, :first_name, :last_name, :personal_email_address, :personal_cell_phone, :work_username, :job_title, :job_level, :work_location_code, :note, :created_at, :updated_at
json.url applicant_url(applicant, format: :json)
