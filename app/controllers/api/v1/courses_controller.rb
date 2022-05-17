module Api
  module V1
    class CoursesController < ApplicationController
      before_action :authenticateing_users
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
          courses_users = User.find(courses.user_id)
          CoursesUser.create(course: courses, user: courses_users)
          render json: courses, status: :created
        else
          render json: courses.errors, status: :unproccessable_entity
        end
      end

      def destroy
        var = CoursesUser.where(course_id: params[:id])
        var.destroy_all
        Course.find(params[:id]).destroy!
      end

      private

      def course_params
        # params.require(:course).permit(:title, :description, :category, :duration, :photo, :price)
      end
    end
  end
end
