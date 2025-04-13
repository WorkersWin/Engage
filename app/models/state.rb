class State < ApplicationRecord
  validates :name, presence: true
  belongs_to :country
  has_many :cities
end
