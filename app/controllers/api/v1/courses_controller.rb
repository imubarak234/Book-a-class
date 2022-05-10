module Api
  module V1
    class CoursesController < ApplicationController
      def index
        render json: Course.all
      end
    end
  end
end