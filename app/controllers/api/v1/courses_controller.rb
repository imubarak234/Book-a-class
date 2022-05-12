module Api
  module V1
    class CoursesController < ApplicationController
      ALLOWED_DATA = %(title, description, category, duration, photo, price).freeze

      def index
        render json: Course.all
      end

      def create
        data = json_payload.select { |k| ALLOWED_DATA.include?(k) }
        courses = Course.new(data)
        courses.update(user: current_user)

        if course.save
          courses_users
          CoursesUser.create(course: courses, user: current_user)
          render json: status: :created
        else
          render json: course.errors, status: :unproccessable_entity
        end
      end

      def destroy
        Course.find(params[:id]).destroy!
      end

      private 

      def course_params
        #params.require(:course).permit(:title, :description, :category, :duration, :photo, :price)
      end
    end
  end
end
