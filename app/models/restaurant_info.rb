class RestaurantInfo < ApplicationRecord
  belongs_to :restaurant, optional: false
end
