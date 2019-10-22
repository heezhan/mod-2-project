class ApplicationController < ActionController::Base
    helper_method :current_user

    def current_user
        User.find(session[:user_id])
    end 
end

#any time i want to call a controller method from a view, it needs to be a helper method
