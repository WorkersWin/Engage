class AssessmentLevel < ApplicationRecord
  validates :level, presence: true
  has_many :assessments
end
