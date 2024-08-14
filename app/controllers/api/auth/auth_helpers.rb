# frozen_string_literal: true

module Api
  module Auth
    module AuthHelpers
      def current_user
        @current_user ||= User.find_by(id: decoded_token[0]['user_id']) if decoded_token
      end

      def decoded_token
        if auth_header
          token = auth_header.split(' ').last
          begin
            JWT.decode(token, Rails.application.credentials[:jwt_secret_key], false, { algorithm: 'HS256' })
          rescue JWT::DecodeError
            nil
          end
        end
      end

      def auth_header
        request.headers['Authorization']
      end

      def authenticate!
        error!('Unauthorized. Invalid token.', 401) unless current_user
      end
    end
  end
end
