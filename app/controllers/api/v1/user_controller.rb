module Api
  module V1
    class User < ApplicationController
      ALLOWED_DATA = %(full_name, email, username, password).freeze

      def index; end

      def create
        data = json_payload.select { |k| ALLOWED_DATA.include?(k) }
        user = User.new(data)

        if user.save
          render json: { success: 'The user was succesfully created' }
        else
          render json: { error: 'could not create user' }
        end
      end
    end
  end
end
