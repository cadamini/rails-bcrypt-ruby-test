class User < ApplicationRecord
  validates :password, length: { minimum: 5 }
  validates_confirmation_of :password
  has_secure_password
end
