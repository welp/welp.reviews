class RestaurantSerializer < ApplicationSerializer
  attributes :name, :price, :is_closed, :url, :menu_url, :address, :phone,
             :hours, :categories, :takes_reservations, :has_delivery,
             :has_takeout, :accepts_credit_cards, :good_for, :parking,
             :has_bike_parking, :is_wheelchair_accessible, :good_for_kids,
             :good_for_groups, :attire, :ambience, :noise_level, :alcohol,
             :has_happy_hour, :best_nights, :is_smoking_friendly,
             :has_outdoor_seating, :wifi, :has_tv, :is_dog_friendly,
             :does_catering, :has_gender_neutral_restrooms

  delegate :good_for, :parking, :attire, :ambience, :noise_level, :alcohol, :wifi,
    to: :restaurant_info

  def price
    '$' * object.price
  end

  def is_closed
    object.closed?
  end

  def categories
    [primary_category, secondary_category, tertiary_category].map(&:name).compact
  end

  def takes_reservations
    object.restaurant_info.reservations?
  end

  def has_delivery
    object.restaurant_info.delivery?
  end

  def has_takeout
    object.restaurant_info.takeout?
  end

  def accepts_credit_cards
    object.restaurant_info.credit_cards?
  end

  def has_bike_parking
    object.restaurant_info.bike_parking?
  end

  def is_wheelchair_accessible
    object.restaurant_info.wheelchair_accessible?
  end

  def good_for_kids
    object.restaurant_info.good_for_kids?
  end

  def good_for_groups
    object.restaurant_info.good_for_groups?
  end

  def has_happy_hour
    object.restaurant_info.happy_hour?
  end

  def best_nights
    object.restaurant_info.best_nights
  end

  def is_smoking_friendly
    object.restaurant_info.smoking?
  end

  def has_outdoor_seating
    object.restaurant_info.outdoor_seating?
  end

  def has_tv
    object.restaurant_info.television?
  end

  def is_dog_friendly
    object.restaurant_info.dog_friendly?
  end

  def does_catering
    object.restaurant_info.caters?
  end

  def has_gender_neutral_restrooms
    object.restaurant_info.gender_neutral_restrooms?
  end

  private

  def restaurant_info
    object.restaurant_info
  end
end
