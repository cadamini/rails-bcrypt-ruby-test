class User < ApplicationRecord
  validates :password, length: { minimum: 5 }
  has_secure_password
end
