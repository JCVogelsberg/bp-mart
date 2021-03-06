class UsersController < ApplicationController
  # before_filter :authorize, only: [:edit,:update]
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
    redirect_to root_url, notice: "Thank you for signing up!"
    else
      render "new"
    end
  end

  def show
    @user = current_user
    @products = Product.all
  end

  private
    def user_params
     params.fetch(:user).permit(:name, :email, :password, :password_confirmation, :account_type)
  end
end
