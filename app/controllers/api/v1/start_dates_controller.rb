module Api
  module V1
    class StartDatesController < ApplicationController

      def index
        StartDate.where(course_id: params[:id]).pluck(:start_date)
      end

    end