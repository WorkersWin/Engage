class Location < ApplicationRecord
  validates :code, presence: true
  belongs_to :city
  belongs_to :state
  belongs_to :country
end
