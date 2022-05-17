module Api
  module V1
    class AuthenticationController < ApplicationController
      class AuthenticationError < StandardError; end

      rescue_from ActionController::ParameterMissing, with: :paramter_missing
      rescue_from AuthenticationError, with: :handle_unauthenticated

      def create
        # params.require(:password).inspect

        raise AuthenticationError unless user.authenticate(params.require(:password))

        #user = User.find_by(username: params.require(:username))

        tokens = AuthenticationTokenService.call(user.id)

        render json: { token: tokens }, status: :created
      end

      private

      def user
        @user ||= User.find_by(username: params.require(:username))
      end

      def paramter_missing(error)
        render json: { error: error.message }, status: :unprocessable_entity
      end

      def handle_unauthenticated
        head :unauthorized
      end
    end
  end
end
