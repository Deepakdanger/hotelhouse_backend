class UsersController < ApplicationController
    skip_before_action :authenticate_request, except: [:index]

    def index
        user        
        render json: @current_user
    end

    def create
        @user = User.create(name:params[:name], email:params[:email],password_digest:params[:password_digest])
        # respond_with(@user)

        if @user.save
            render json: @user, status: :created, location: @user
        else
            render json: { error: 'Not Created' }
        end
    end

    private

    def user
        @current_user = AuthorizeApiRequest.call(request.headers).result.name
    end

end
