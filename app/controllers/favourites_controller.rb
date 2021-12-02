class FavouritesController < ApplicationController
    def index
        @fab = current_user.houses
        render json: @fab
    end

    def create
        @fab = current_user.favourites.new(house_id: params[:house_id])
    
        if @fab.save
            render json: { done: 'Selected' }, status: :created
        else
            render json: { error: 'Not Selected' }
        end
    end
    
      def destroy
        fab = Favourite.find_by(id: params[:id], user: current_user, house_id: params[:house_id])
        if fab
            fab.destroy
            render json: { done: 'Deleted' }
        else
            render json: { error: 'Not deleted' }
        end
    end
end
