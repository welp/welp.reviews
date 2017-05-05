Types::Restaurant = GraphQL::ObjectType.define do
  name 'Restaurant'
  description 'A place to go to for delicious eats and drinks.'

  field :id, !types.Int, "The Restaurant's unique identifier."
  field :name, !types.String, 'What the owners of the Restaurant decided to call it.'

  field :rating, !types.Int, "The Restaurant's average rating."

  field :categories, !types[!Types::Category] do
    description 'The categories this Restaurant belongs in, from most to least relevant.'

    resolve -> (restaurant, arguments, context) {
      [
        restaurant.primary_category,
        restaurant.secondary_category,
        restaurant.tertiary_category
      ].compact
    }
  end

  field :price, !types.String do
    description 'How cheap or expensive the Restaurant is on a scale of $ to $$$$.'

    resolve -> (restaurant, arguments, context) {
      '$' * restaurant.price
    }
  end

  field :url, Types::URI, "The Restaurant's external URL."
  field :menuUrl, Types::URI, "A URL to the Restaurant's menu.", property: :menu_url
  field :closed, !types.Boolean, 'Whether or not the Restaurant is permanently closed.'
  field :address, types.String, 'The physical address of the Restaurant.'
  field :phone, types.String, 'A number you can use to call the Restaurant on a phone.'
  field :hours, types.String, 'When the Restaurant is open. No particular formatting, sorry.'

  field :reviews, !types[Types::Review] do
    description 'A list of Reviews left on this Restaurant.'

    argument :page, types.Int, 'Which page of reviews you would like.', default_value: 1
    argument :perPage, types.Int, 'How many reviews you would like per page.', default_value: 25

    resolve -> (restaurant, arguments, context) {
      restaurant.reviews.page(arguments[:page]).per(arguments[:perPage])
    }
  end

  field :tips, !types[Types::Tip] do
    description 'A list of Tips left about this Restaurant.'

    argument :page, types.Int, 'Which page of tips you would like.', default_value: 1
    argument :perPage, types.Int, 'How many tips you would like per page.', default_value: 25

    resolve -> (restaurant, arguments, context) {
      restaurant.tips.page(arguments[:page]).per(arguments[:perPage])
    }
  end

  # All of the associated RestaurantInfo fields. Let's just include them here; no
  # need to subject the client to our internal implementation details.

  field :takesReservations, types.Boolean, 'Whether or not the Restaurant takes reservations.' do
    resolve -> (restaurant, arguments, context) {
      restaurant.restaurant_info.reservations
    }
  end

  field :offersDelivery, types.Boolean, 'Whether or not this Restaurant will deliver food to you.' do
    resolve -> (restaurant, arguments, context) {
      restaurant.restaurant_info.delivery
    }
  end

  field :hasTakeout, types.Boolean, 'Whether or not you can order food to-go at this Restaurant.' do
    resolve -> (restaurant, arguments, context) {
      restaurant.restaurant_info.takeout
    }
  end

  field :acceptsCreditCards, types.Boolean, 'Whether or not you can pay with a credit card at this Restaurant.' do
    resolve -> (restaurant, arguments, context) {
      restaurant.restaurant_info.credit_cards
    }
  end

  field :goodFor, types[Types::GoodForEnum], 'What this Restaurant does best.' do
    resolve -> (restaurant, arguments, context) {
      restaurant.restaurant_info.good_for
    }
  end

  field :parkingOptions, types[Types::ParkingEnum], 'What parking options the Restaurant has nearby.' do
    resolve -> (restaurant, arguments, context) {
      restaurant.restaurant_info.parking
    }
  end

  field :hasBikeParking, types.Boolean, 'Whether or not there is bike parking nearby the Restaurant.' do
    resolve -> (restaurant, arguments, context) {
      restaurant.restaurant_info.bike_parking
    }
  end

  field :isWheelchairAccessible, types.Boolean, 'Whether or not this Restaurant is wheelchair accessible.' do
    resolve -> (restaurant, arguments, context) {
      restaurant.restaurant_info.wheelchair_accessible
    }
  end

  field :isGoodForKids, types.Boolean, 'Whether or not this Restaurant is good for kids' do
    resolve -> (restaurant, arguments, context) {
      restaurant.restaurant_info.good_for_kids
    }
  end

  field :isGoodForGroups, types.Boolean, 'Whether or not this Restaurant is good for groups' do
    resolve -> (restaurant, arguments, context) {
      restaurant.restaurant_info.good_for_groups
    }
  end

  field :attire, Types::AttireEnum, 'What you should wear to this Restaurant.' do
    resolve -> (restaurant, arguments, context) {
      restaurant.restaurant_info.attire
    }
  end

  field :ambience, types[Types::AmbienceEnum] do
    description 'The ambiences you can expect to experience at this Restaurant.'

    resolve -> (restaurant, arguments, context) {
      restaurant.restaurant_info.ambience
    }
  end

  field :noiseLevel, Types::NoiseLevelEnum, 'The usual level of noise at the Restaurant.' do
    resolve -> (restaurant, arguments, context) {
      restaurant.restaurant_info.noise_level
    }
  end

  field :alcohol, Types::AlcoholEnum, 'What kind of alcohol the Restaurant is able to serve.' do
    resolve -> (restaurant, arguments, context) {
      restaurant.restaurant_info.alcohol
    }
  end

  field :hasHappyHour, types.Boolean, 'Whether or not the Restaurant has a Happy Hour menu.' do
    resolve -> (restaurant, arguments, context) {
      restaurant.restaurant_info.happy_hour
    }
  end

  field :bestNights, types[Types::DayEnum], 'A list of the best nights to visit this Restaurant.' do
    resolve -> (restaurant, arguments, context) {
      restaurant.restaurant_info.best_nights
    }
  end

  field :allowsSmoking, types.Boolean, 'Whether or not the Restaurant allows smoking.' do
    resolve -> (restaurant, arguments, context) {
      restaurant.restaurant_info.smoking
    }
  end

  field :hasOutdoorSeating, types.Boolean, 'Whether or not the Restaurant has outdoor seating.' do
    resolve -> (restaurant, arguments, context) {
      restaurant.restaurant_info.outdoor_seating
    }
  end

  field :hasWifi, Types::WifiEnum, 'The state of wifi at the Restaurant.' do
    resolve -> (restaurant, arguments, context) {
      restaurant.restaurant_info.wifi
    }
  end

  field :hasTV, types.Boolean, 'Whether or not the Restaurant has television sets.' do
    resolve -> (restaurant, arguments, context) {
      restaurant.restaurant_info.television
    }
  end

  field :dogFriendly, types.Boolean, 'Whether or not dogs are allowed at the Restaurant.' do
    resolve -> (restaurant, arguments, context) {
      restaurant.restaurant_info.dog_friendly
    }
  end

  field :caters, types.Boolean, 'Whether or not the Restaurant offers catering services.' do
    resolve -> (restaurant, arguments, context) {
      restaurant.restaurant_info.caters
    }
  end

  field :hasGenderNeutralRestrooms, types.Boolean, 'Whether or not the Restaurant has gender neutral restrooms.' do
    resolve -> (restaurant, arguments, context) {
      restaurant.restaurant_info.gender_neutral_restrooms
    }
  end
end
