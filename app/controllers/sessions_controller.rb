class SessionsController < ApplicationController
    def login
    end

    def process_login
        user = User.find_by(username: params[:username])
        if user
            session[:user_id] = user.id #does this alter the database or is it setting it temporarily?
            redirect_to snacks_path
        else
            flash.now["notice"] = "No user found with that name"
            render :login 
        end
    end 

    def logout
        session.clear
        redirect_to login_path
    end
end 