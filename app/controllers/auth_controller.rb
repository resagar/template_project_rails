class AuthController < ApplicationController
  before_action :authenticate_user!

  def token_generate
    token = JWT.encode({ user_id: current_user.id }, Rails.application.credentials[:jwt_secret_key], 'HS256')
    render json: { token: }, status: :ok
  end
end
