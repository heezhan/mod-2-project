class ApplicationController < ActionController::Base
    helper_method :current_user

    def current_user
        User.find_by(id: session[:user_id])
    end 

    def logged_in?
        !!current_user
    end 

    def authorized
        redirect_to login_path unless logged_in?
    end 
end

#any time i want to call a controller method from a view, it needs to be a helper method
