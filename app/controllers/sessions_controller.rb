class SessionsController < ApplicationController
  
    def logout
        sessions.delete(:user_id)
        redirect_to new_user_path
    end

    def new
    end

    def login
        user = User.find_by(name: params[:login_info][:user_name])
    
        if user && user.authenticate(params[:login_info][:password])
          sessions[:user_id] = user.id
          redirect_to users_path(user.id)
        else
          flash[:errors] = "Username or Password does not match" 
          redirect_to new_login_path
        end 
    end 
    

end