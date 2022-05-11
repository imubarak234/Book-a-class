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
          render json: { success: 'Succesfully created the course' }
        else
          render json: { error: 'Could not create course' }
        end
      end
    end
  end
end
