class Applicant < ApplicationRecord
validates :personal_email, presence: true
validates :personal_phone, presence: true
# validates address_1, presence: true
# validates city, presence: true
# validates state, presence: true
# validates postal_code, presence: true
# validates country, presence: true
# validates job_title, presence: true
# validates team_name, presence: true
end
