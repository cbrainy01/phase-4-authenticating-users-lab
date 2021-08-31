class UsersController < ApplicationController

    def show
        user = User.find_by(id: session[:user_id])
        render json: { id: user.id, username: user.username }, status: 200
    end

end
