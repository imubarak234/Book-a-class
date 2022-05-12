module Api
  module V1
    class ReservationsController < ApplicationController
      ALLOWED_DATA = %[duration, reserve_date].freeze

      def index
        render json: Course.find(params[:course_id]).reservations
      end

      def create
        courses = Course.find(params[:course_id])
        current_user = User.find(course.user_id)
        data = json_payload.select { |k| ALLOWED_DATA > include?(k) }
        reservation = Reservation.new(data)
        reservation.update(user: current_user, course: courses)

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
