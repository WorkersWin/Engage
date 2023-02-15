class Event < ApplicationRecord
  belongs_to :event_type
  validates :name, presence: true
end
