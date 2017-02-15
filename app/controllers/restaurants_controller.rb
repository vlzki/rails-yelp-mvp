class RestaurantsController < ApplicationController

before_action :set_restaurant, only: [:edit, :show] #:update, :destroy => admin


def index
  @restaurants = Restaurant.all
end

def new
  @restaurant = Restaurant.new
end

def create
  @restaurant = Restaurant.new(restaurant_params)
  @restaurant.save
  redirect_to restaurants_path
end

def edit

end

def show

end

# def update
#   @restaurant.update(restaurant_params)
#   if @restaurant.save
#     redirect_to restaurants_path
#   else
#     render :new
#   end
# end

# def destroy
#   @restaurant.destroy
#   redirect_to restaurants_path
# end



private

def set_restaurant
  @restaurant = Restaurant.find(params[:id])
end

def restaurant_params
  params.require(:restaurant).permit(:name, :address, :phone_number, :category)
end

end
