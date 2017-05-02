class RestaurantsController < ApplicationController
  def index
    restaurants = Restaurant.includes(
      :primary_category,
      :secondary_category,
      :tertiary_category,
      :restaurant_info
    )

    restaurants = paginate(restaurants)

    render json: restaurants
  end

  def show
    restaurant = Restaurant.find(params[:id])

    render json: restaurant
  end

  def create
    restaurant = Restaurant.new(restaurant_params)

    if restaurant.save
      restaurant.create_restaurant_info(restaurant_info_params)
      render json: restaurant, status: 201
    else
      render json: { errors: restaurant.errors }, status: 422
    end
  end

  def update
    restaurant = Restaurant.find(params[:id])

    if restaurant.update_attributes(restaurant_params)
      restaurant.restaurant_info.update_attributes(restaurant_info_params)

      head 204
    else
      render json: { errors: restaurant.errors }, status: 422
    end
  end

  def destroy
    restaurant = restaurant.find(params[:id])
    restaurant.destroy

    head 204
  end

  private

  def restaurant_params
    return @restaurant_params if defined?(@restaurant_params)

    @restaurant_params = params.slice(:name, :url, :menu_url, :address, :phone,
      :hours, :primary_category_id, :secondary_category_id, :tertiary_category_id)

    @restaurant_params[:closed] = params[:is_closed]
    @restaurant_params[:price] = params[:price].length

    @restaurant_params.permit!
  end

  def restaurant_info_params
    return @restaurant_info_params if defined?(@restaurant_info_params)

    @restaurant_info_params = params.slice(:good_for, :parking, :good_for_kids,
      :good_for_groups, :attire, :ambience, :noise_level, :alcohol, :best_nights, :wifi)

    @restaurant_info_params[:reservations] = params[:takes_reservations]
    @restaurant_info_params[:delivery] = params[:has_delivery]
    @restaurant_info_params[:takeout] = params[:has_takeout]
    @restaurant_info_params[:credit_cards] = params[:accepts_credit_cards]
    @restaurant_info_params[:bike_parking] = params[:has_bike_parking]
    @restaurant_info_params[:wheelchair_accessible] = params[:is_wheelchair_accessible]
    @restaurant_info_params[:happy_hour] = params[:has_happy_hour]
    @restaurant_info_params[:smoking] = params[:is_smoking_friendly]
    @restaurant_info_params[:outdoor_seating] = params[:has_outdoor_seating]
    @restaurant_info_params[:television] = params[:has_tv]
    @restaurant_info_params[:dog_friendly] = params[:is_dog_friendly]
    @restaurant_info_params[:caters] = params[:does_catering]
    @restaurant_info_params[:gender_neutral_restrooms] = params[:has_gender_neutral_restrooms]

    @restaurant_info_params.permit!
  end
end
