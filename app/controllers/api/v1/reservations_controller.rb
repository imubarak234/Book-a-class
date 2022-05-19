module Api
  module V1
    class ReservationsController < ApplicationController
      before_action :authenticateing_users
      # include ActionController::HttpAuthentication::Token
      ALLOWED_DATA = %(duration, reserve_date, course_id).freeze

      def index
        render json: Reservation.where(user_id: authenticateing_users.id)
      end

      def show
        render json: Reservation.find(params[:id])
      end

      def create
        data = json_payload.select { |k| ALLOWED_DATA.include?(k) }
        reservation = Reservation.new(data)
        reservation.user_id = authenticateing_users.id

        if reservation.save
          render json: { success: 'The reservation was succesfully created' }
        else
          render json: { error: 'could not create reservation' }
        end
      end

      def destroy
        Reservation.find(params[:id]).destroy!
      end
    end
  end
end
