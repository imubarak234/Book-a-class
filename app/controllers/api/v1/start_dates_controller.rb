module Api
  module V1
    class StartDatesController < ApplicationController
      def index
        render json: StartDate.where(course_id: params[:course_id]).pluck(:start_date)
      end
    end
  end
end
