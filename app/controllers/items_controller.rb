class ItemsController < ApplicationController

    def index
        item = Item.order(city: :desc)
        render json: item, include: :user
    end
end
