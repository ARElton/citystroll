class CitiesController < ApplicationController
    skip_before_action :authorized, only: [:index, :show]

    def index
        @cities = City.all 
    end

    def show
        @city = City.find(params[:id])
        if @current_user
            render :show
        else
            flash[:city_error] = "Sign up to view a city!"
            redirect_to cities_path
        end
    end
    
end
