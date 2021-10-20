class UsersController < ApplicationController

    def show
        if current_user
            render json: current_user
        else
            render json: { error: "Not authorized" }, status: :unauthorized
        end
    end

    def create 
        user = User.create(user_params)
        if user.valid?
            session[:user_id] = user.id
            render json: user, status: :created
        else 
            render json: { errors: user.errors.full_messages }
        end
    end

    private 

    def user_params
        params.permit(:username, :email, :bio, :password)
    end
end
