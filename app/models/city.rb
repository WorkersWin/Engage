class City < ApplicationRecord
  validates :name, presence: true
  belongs_to :country
  belongs_to :state
end
