class Note < ApplicationRecord

  has_many :contact_note
  has_many :contacts, through: :contact_note
  accepts_nested_attributes_for :contact_note

end
