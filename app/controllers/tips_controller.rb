class TipsController < ApplicationController
  before_action :require_authorization!, except: [:index, :show]
  before_action :find_restaurant!

  def index
    tips = paginate(@restaurant.tips)

    render json: tips
  end

  def show
    tip = @restaurant.tips.find(params[:id])

    render json: tip
  end

  def create
    tip = @restaurant.tips.new(body: params[:body], user: current_user)

    if tip.save
      render json: tip, status: 201
    else
      render json: { errors: tip.errors }, status: 422
    end
  end

  def update
    tip = @restaurant.tips.find(params[:id])

    if tip.user == current_user
      if tip.update_attributes(body: params[:body])
        head 204
      else
        render json: { errors: tip.errors }, status: 422
      end
    else
      render json: { error: "This tip doesn't belong to you" }, status: 401
    end
  end

  def destroy
    tip = @restaurant.tips.find(params[:id])

    if tip.user == current_user
      tip.destroy

      head 204
    else
      render json: { error: "This tip doesn't belong to you" }, status: 401
    end
  end

  private

  def find_restaurant!
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
