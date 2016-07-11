module Api
  module V1
    class CatsController < ApplicationController
      def index
        render json: Cat.includes(:hobbies), include: ['hobbies']
      end

      def create
        attributes = cat_params
        @cat = Cat.new(attributes)

        if @cat.save
          render json: @cat, status: :created, location: api_v1_cats_url(@cat)
        else
          respond_with_errors(@cat)
        end
      end

      private

      def cat_params
        params.require(:cat).permit(:name, :breed, :weight, :temperament)
      end
    end
  end
end
