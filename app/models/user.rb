class User < ApplicationRecord
  has_secure_password
  has_many :sessions, dependent: :destroy
  belongs_to :contact, optional: true

  normalizes :email_address, with: ->(e) { e.strip.downcase }
end
