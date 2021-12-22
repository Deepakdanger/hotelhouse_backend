class FavouritesController < ApplicationController
  def index
    @fab = current_user.houses
    render json: @fab
  end

  def create
    @fab = current_user.favourites.new(fav_params)

    if @fab.save
      render json: { done: 'Fav created' }, status: :created
    else
      render json: { error: 'Fav not created' }
    end
  end

  def destroy
    fab = Favourite.find_by(user: current_user, house_id: params[:house_id])
    if fab
      fab.destroy
      render json: { done: 'Deleted' }
    else
      render json: { error: 'Fav Not deleted' }
    end
  end

  private

  def fav_params
    params.require(:favourite).permit(:house_id)
  end
end
