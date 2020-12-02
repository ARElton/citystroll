class ApplicationController < ActionController::Base
    before_action :find_current_user

    def find_current_user
        @current_user = User.find_by(id: sessions[:user_id])
    end

end
