class FavoritesController < ApplicationController

    def create
       favorite = Favorite.find_or_create_by(user_id: @current_user.id, post_id: params[:id]) 
       flash[:fav] = "Successfully added to Favorites"
       redirect_back fallback_location: user_path(@current_user)
    end
end
