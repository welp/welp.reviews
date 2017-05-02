class User < ApplicationRecord
  has_secure_password

  has_one :user_profile

  has_many :reviews
  has_many :tips

  validates :username, presence: true, length: { in: 6..20 } 
  validates :email, presence: true, format: /@/ # lol
end
