module Api
  module V1
    class AuthenticationController < ApplicationController
    rescue_from ActionController::ParameterMissing, with: :paramter_missing

      def create
        params.require(:username).inspect
        params.require(:password).inspect
      end

      private

      def paramter_missing(e)
        render json: { error: e.message }, status: :unprocessable_entity
      end
    end
  end
end