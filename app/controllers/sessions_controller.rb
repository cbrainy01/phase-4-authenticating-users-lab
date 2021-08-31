class SessionsController < ApplicationController

    def create
        user = User.find_by(username: params[:username])
        session[:user_id] = user.id 
        render json: user, status: 201
    end

    def destroy
        # byebug
        # user_id = session[:user_id]
        session[:user_id] = nil
        
        head :no_content
    end


end
