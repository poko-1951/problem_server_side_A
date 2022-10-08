module Api
  module V1
    class ItemsController < ApplicationController
      def index
        items = Item.order(created_at: :desc)
        render json: { status: 'SUCCESS', message: 'Loaded posts', data: items }
      end

      def create
        item = Item.new(item_params)
        if item.save
          render json: { status: 'SUCCESS', data: item }
        else
          render json: { status: 'ERROR', data: item.errors }
        end
      end

      private

      def item_params
        params.permit(:name, :price)
      end
    end
  end
end