class City < ApplicationRecord
  # validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :name, presence: true
  belongs_to :state
end
