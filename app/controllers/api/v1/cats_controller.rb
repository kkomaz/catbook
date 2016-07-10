module Api
  module V1
    class CatsController < ApplicationController
      def index
        render json: Cat.all, include: ['hobbies']
      end
    end
  end
end
