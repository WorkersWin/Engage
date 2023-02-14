json.extract! contact, :id, :first_name, :last_name, :pronouns, :mobile_phone, :personal_email, :created_at, :updated_at
json.url contact_url(contact, format: :json)
