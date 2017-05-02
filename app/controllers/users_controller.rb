class UsersController < ApplicationController
  before_action :require_authorization!, except: [:show, :create]

  def show
    user = User.find(params[:id])

    render json: user
  end

  def user
    render json: current_user
  end

  def create
    user = User.new(user_params)

    if user.save
      user.create_user_profile(profile_params)

      render json: { token: user.token }, status: 201
    else
      render json: { errors: user.errors }, status: 422
    end
  end

  def update
    if current_user.update_attributes(user_params)
      current_user.user_profile.update_attributes(profile_params)

      head 204
    else
      render json: { errors: user.errors }, status: 422
    end
  end

  def destroy
    current_user.destroy

    head 204
  end

  private

  def user_params
    return @user_params if defined?(@user_params)

    @user_params = params.slice(:username, :email, :city)

    @user_params.permit!
  end

  def profile_params
    return @profile_params if defined?(@profile_params)

    @profile_params = params.slice(:name, :nickname, :tagline, :hometown, :website,
      :second_favorite_site, :first_concert, :favorite_movie, :language)

    @profile_params[:loves]            = params[:things_i_love]
    @profile_params[:find_in]          = params[:find_me_in]
    @profile_params[:when_not_welping] = params[:when_im_not_welping]
    @profile_params[:last_book]        = params[:last_book_i_read]
    @profile_params[:last_meal]        = params[:last_meal_on_earth]
    @profile_params[:secret]           = params[:dont_tell_anyone_but]
    @profile_params[:recent_discovery] = params[:most_recent_discovery]
    @profile_params[:crush]            = params[:current_crush]

    @profile_params.permit!
  end
end
