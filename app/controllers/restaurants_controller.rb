class RestaurantsController < ApplicationController
before_action :set_restaurant, only: [:show]
  def new
  @restaurant = Restaurant.new
  end

  def index
  @restaurants = Restaurant.all
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurants_path(@restaurant)
  end

  def show
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
