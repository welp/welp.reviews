class User < ApplicationRecord
  has_secure_token

  has_one :user_profile, dependent: :destroy

  has_many :reviews
  has_many :tips

  validates :username, presence: true, uniqueness: true, length: { in: 6..20 }
  validates :email, presence: true, uniqueness: true, format: /@/ # lol
end
