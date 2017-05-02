class Review < ApplicationRecord
  belongs_to :user,       optional: false
  belongs_to :restaurant, optional: false

  validates :rating, presence: true, inclusion: { in: 1..5 }
  validates :body,   presence: true
end
