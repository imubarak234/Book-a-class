module Api
  module V1
    class ReservationsController < ApplicationController
      ALLOWED_DATA = %[duration, reserve_date, course_id, user_id].freeze

      def index
        render json: Reservation.where(course_id: Course.find(params[:course_id]).id) 
      end

      def show
        render json: Reservation.find(params[:id])
      end

      def create
        data = json_payload.select { |k| ALLOWED_DATA.include?(k) }
        reservation = Reservation.new(data)

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
