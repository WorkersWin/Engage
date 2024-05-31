class Country < ApplicationRecord
  validates :name, presence: true
end
