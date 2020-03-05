class User < ApplicationRecord
  validates :password, length: { minimum: 5 }
  validates :password, presence: true, :on => :update, :unless => lambda{ |user| user.password.blank? }
  has_secure_password
end

