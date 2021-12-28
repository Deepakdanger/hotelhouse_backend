class UsersController < ApplicationController
  skip_before_action :authenticate_request, except: [:index]

  def index
    render json: current_user
  end

  def create
    @user = User.create(user_params)
    # respond_with(@user)

    if @user.save
      render json: { check: 'User Created' }
    else
      render json: { error: @user.errors.full_messages }
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
