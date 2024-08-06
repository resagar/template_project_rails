# frozen_string_literal: true


class Api::Auth::AuthController < Grape::API
  format :json

  resource :auth do
    desc 'Authentication and get token'
    params do
      requires :email, type: String, desc: 'User email'
    end
    post :token do
      user = User.find_by(email: params[:email])
      if user
        token = JWT.encode({user_id: user.id}, Rails.application.credentials[:jwt_secret_key], 'HS256')
        {token:}
      else
        error!('Invalid email', 401)
      end

    end
  end
end
