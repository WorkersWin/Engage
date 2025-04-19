class Contact < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  has_many :contact_took_trainings

  scope :current_assessment, -> { order('assessed_on desc').first }

  has_many :given_assessments, class_name: 'Assessment', foreign_key: 'assessor_id'
  has_many :received_assessments, class_name: 'Assessment', foreign_key: 'assessee_id'

  has_many :contact_note
  has_many :notes, through: :contact_note
  accepts_nested_attributes_for :contact_note

  has_one :user

  def current_assessment
    received_assessments.current.first
  end

  def display_name
    "#{first_name} #{last_name}"
  end
end
