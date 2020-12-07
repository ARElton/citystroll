class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :login]
  
    def logout
      session.delete(:user_id)
      redirect_to new_user_path
    end

    def new
    end

    def login
      @user = User.find_by(username: params[:login_info][:user_name])
      if @user && @user.authenticate(params[:login_info][:password])
        session[:user_id] = @user.id
        redirect_to user_path(@user.id)
      else
        flash[:user_errors] = "Username or Password does not match" 
        redirect_to new_login_path
      end 
    end 
    
end