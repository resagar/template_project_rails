# frozen_string_literal: true

module Api
  class Base < Grape::API
    format :json
    prefix :api

    # mount Api::Auth::AuthController
  end
end
