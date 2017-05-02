class User < ApplicationRecord
  has_one :user_profile

  has_many :reviews
  has_many :tips
end
