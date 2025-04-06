class ContactNote < ApplicationRecord
  belongs_to :contacts
  belongs_to :notes
end
