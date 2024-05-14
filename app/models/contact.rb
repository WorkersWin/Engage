class Contact < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  has_many :contact_took_trainings

  scope :current_assessment, -> { order('assessed_on desc').first }

  has_many :given_assessments, class_name: 'Assessment', foreign_key: 'assessor_id'
  has_many :received_assessments, class_name: 'Assessment', foreign_key: 'assessee_id'

  def display_name
    "#{first_name} #{last_name}"
  end
end
