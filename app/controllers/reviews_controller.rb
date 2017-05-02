class ReviewsController < ApplicationController
  before_action :require_authorization!, except: [:index, :show]
  before_action :find_restaurant!

  def index
    reviews = paginate(@restaurant.reviews)

    render json: reviews
  end

  def show
    review = @restaurant.reviews.find(params[:id])

    render json: review
  end

  def create
    review = @restaurant.reviews.new(review_params)
    review.user = current_user

    if review.save
      render json: review, status: 201
    else
      render json: { errors: review.errors }, status: 422
    end
  end

  def update
    review = @restaurant.reviews.find(params[:id])

    if review.user == current_user
      if review.update_attributes(review_params)
        head 204
      else
        render json: { errors: review.errors }, status: 422
      end
    else
      render json: { error: "This review doesn't belong to you" }, status: 401
    end
  end

  def destroy
    review = @restaurant.reviews.find(params[:id])

    if review.user == current_user
      review.destroy

      head 204
    else
      render json: { error: "This review doesn't belong to you" }, status: 401
    end
  end

  private

  def review_params
    return @review_params if defined?(@review_params)

    @review_params = params.slice(:body, :rating)

    @review_params.permit!
  end

  def find_restaurant!
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
