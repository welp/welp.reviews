class RestaurantSerializer < ApplicationSerializer
  attributes :name, :price, :is_closed, :url, :menu_url, :address, :phone,
             :hours, :categories

  def price
    '$' * object.price
  end

  def is_closed
    object.closed?
  end

  def categories
    [primary_category, secondary_category, tertiary_category].map(&:name).compact
  end
end
