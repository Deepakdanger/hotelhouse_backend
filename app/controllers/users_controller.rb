class UsersController < ApplicationController
    skip_before_action :authenticate_request, except: [:index]

    def index
        render json: current_user
    end

    def create
        @user = User.create(name:params[:name], email:params[:email],password_digest:params[:password])
        # respond_with(@user)

        if @user.save
            render json: { data:@user, notice: 'User Created' }
        else
            render json: { error: @user.errors.full_messages }
        end
    end
end
