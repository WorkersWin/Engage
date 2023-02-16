class Contact < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  has_many :assessor_assessments, class_name: 'Assessment', foreign_key: 'assessor_id'
  has_many :assessee_assessments, class_name: 'Assessment', foreign_key: 'assessee_id'
  has_many :contact_took_trainings
  scope :current_assessment, -> { order('assessed_on desc').first }
end
