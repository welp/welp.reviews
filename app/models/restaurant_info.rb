class RestaurantInfo < ApplicationRecord
  belongs_to :restaurant, optional: false

  VALID_GOOD_FOR = ['Breakfast', 'Brunch', 'Lunch', 'Dinner', 'Late Night', 'Dessert']
  VALID_PARKING = ['Street', 'Private Lot', 'Garage']
  VALID_ATTIRE = ['Casual', 'Dressy', 'Formal (Jacket Required)']
  VALID_AMBIENCE = ['Divey', 'Hipster', 'Casual', 'Touristy', 'Trendy', 'Intimate', 'Romantic', 'Classy', 'Upscale']
  VALID_NOISE_LEVEL = ['Quiet', 'Average', 'Loud', 'Very Loud']
  VALID_ALCOHOL = ['Beer Only', 'Wine Only', 'Beer & Wine Only', 'Full Bar']
  VALID_BEST_NIGHTS = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday']
  VALID_WIFI = ['None', 'Free', 'Paid']

  validates :attire,      inclusion: { in: VALID_ATTIRE },      allow_blank: true
  validates :noise_level, inclusion: { in: VALID_NOISE_LEVEL }, allow_blank: true
  validates :alcohol,     inclusion: { in: VALID_ALCOHOL },     allow_blank: true
  validates :wifi,        inclusion: { in: VALID_WIFI },        allow_blank: true

  validate :must_have_valid_good_for
  validate :must_have_valid_parking
  validate :must_have_valid_ambience
  validate :must_have_valid_best_nights

  private

  def must_have_valid_good_for
    return unless good_for.present?

    if good_for.any? { |item| !item.in?(VALID_GOOD_FOR) }
      errors.add(:good_for, "must contain only #{VALID_GOOD_FOR.to_sentence(last_word_connector: ', or')}")
    end
  end

  def must_have_valid_parking
    return unless parking.present?

    if parking.any? { |item| !item.in?(VALID_PARKING) }
      errors.add(:parking, "must contain only #{VALID_PARKING.to_sentence(last_word_connector: ', or')}")
    end
  end

  def must_have_valid_ambience
    return unless ambience.present?

    if ambience.any? { |item| !item.in?(VALID_AMBIENCE) }
      errors.add(:ambience, "must contain only #{VALID_AMBIENCE.to_sentence(last_word_connector: ', or')}")
    end
  end

  def must_have_valid_best_nights
    return unless best_nights.present?

    if best_nights.any? { |item| !item.in?(VALID_BEST_NIGHTS) }
      errors.add(:best_nights, "must contain only #{VALID_BEST_NIGHTS.to_sentence(last_word_connector: ', or')}")
    end
  end
end
