class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordNotFound,   with: :not_found

  def current_user
    @current_user ||= User.find_by(token: current_token)
  end

  def require_authorization!
    unless current_user
      render json: { error: 'Must be logged in' }, status: 401

      throw(:abort)
    end
  end

  def current_token
    return unless headers['Authorization']

    @current_token ||= request.headers['Authorization'].match(/\A[Tt]oken\s+(.+)\z/)[1]
  end

  def not_found
    render json: { error: 'Not found' }, status: 404
  end
end
