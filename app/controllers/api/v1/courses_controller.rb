module Api
  module V1
    class CoursesController < ApplicationController
      # before_action :authenticateing_users
      ALLOWED_DATA = %(title, description, category, duration, photo, price, user_id).freeze

      def index
        render json: Course.all
      end

      def show
        render json: Course.find(params[:id])
      end

      def create
        data = json_payload.select { |k| ALLOWED_DATA.include?(k) }
        courses = Course.new(data)
        # courses.update(user: current_user)

        if courses.save
          render json: { success: 'The course was succesfully created' }
        else
          render json: { error: 'could not create course' }
        end
      end

      def destroy
        StartDate.where(course_id: params[:id]).delete_all
        Reservation.where(course_id: params[:id]).delete_all
        Course.find(params[:id]).destroy!
        render json: { success: 'The course deleted' }
      end

      private

      def course_params
        # params.require(:course).permit(:title, :description, :category, :duration, :photo, :price)
      end
    end
  end
end
