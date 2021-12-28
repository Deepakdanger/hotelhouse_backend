class HousesController < ApplicationController
  def index
    @house = House.all
    render json: @house
  end

  def show
    @house = House.find(params[:id])
    @fav = if Favourite.find_by(house_id: @house.id, user_id: current_user.id)
             true
           else
             false
           end
    render json: { data: @house, status: @fav }
  end
end
