module Api
  module V1
    class CoursesController < ApplicationController
      ALLOWED_DATA = %(title, description, category, duration, photo, price)

      def index
        render json: Course.all
      end

      def create
        data = json_payload.select { |k| ALLOWED_DATA.include?(k)}
        course = Course.new(data)
        course.update(user: current_user)

        if course.save
          render json: { "Succesfully created the course" }
        else
          render json: { error: "Could not create course" }
      end
    end
  end
end