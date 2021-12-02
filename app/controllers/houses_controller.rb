class HousesController < ApplicationController
  def index
    @house=House.all
    render json: @house
  end

  def show
    @house = House.find(params[:id])
    render json: @house
  end
end
