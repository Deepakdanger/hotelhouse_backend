class HousesController < ApplicationController

  def index
    @house=House.all
    render json: current_user
  end

  def show
    @house = House.find(params[:id])
    if(Favourite.find_by(house_id: @house.id, user_id: current_user.id))
      @fav=true
    else
      @fav=false
    end
    render json: { data: @house, status: @fav }
  end
end
