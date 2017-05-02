class Restaurant < ApplicationRecord
  has_one :restaurant_info, dependent: :destroy

  has_many :reviews, dependent: :destroy
  has_many :tips, dependent: :destroy

  belongs_to :primary_category,   class_name: 'Category', optional: false
  belongs_to :secondary_category, class_name: 'Category', optional: true
  belongs_to :tertiary_category,  class_name: 'Category', optional: true

  validates :name, presence: true
  validates :price, inclusion: { in: 1..4, message: 'Must be between $ and $$$$' }
end
