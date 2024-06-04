class Location < ApplicationRecord
  belongs_to :city
  belongs_to :state
  belongs_to :country
end
