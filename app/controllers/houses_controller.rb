class HousesController < ApplicationController
  def index
    @house=House.all
    render json: @house
  end
end
