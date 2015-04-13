class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def update
    user = User.find(params[:id])
    user.update!(user_params)
    render json: user
  end

  def destroy
    User.destroy(params[:id])

    render text: "User destroyed!"
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: user
    else
      render(
        json: user.errors.full_messages, status: :unprocessable_entity
      )
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end