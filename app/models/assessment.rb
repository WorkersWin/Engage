class Assessment < ApplicationRecord
  belongs_to :assessment_level
  belongs_to :assessor, class_name: 'Contact'
  belongs_to :assessee, class_name: 'Contact'
  validates :assessed_on, presence: true
  validates :assessee, comparison: { other_than: :assessor, message: "and Assessor cannot be the same person" }
end
