class Restaurant < ApplicationRecord
  has_one :restaurant_info

  has_many :reviews
  has_many :tips

  belongs_to :primary_category,   class_name: 'Category', optional: false
  belongs_to :secondary_category, class_name: 'Category', optional: true
  belongs_to :tertiary_category,  class_name: 'Category', optional: true
end
