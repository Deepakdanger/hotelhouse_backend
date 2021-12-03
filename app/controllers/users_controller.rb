class UsersController < ApplicationController
    skip_before_action :authenticate_request, except: [:index]

    def index
        render json: current_user
    end

    def create
        @user = User.create(name:params[:name], email:params[:email],password:params[:password])
        # respond_with(@user)

        if @user.save
            render json: { check: 'User Created' }
        else
            render json: { error: @user.errors.full_messages }
        end
    end
end
