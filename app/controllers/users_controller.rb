class UsersController < ApplicationController
#    before_action :set_message, only: [:edit, :update, :destroy]
  before_action :set_user, only: [:show, :edit, :update]
    
  def show
#    @user = User.find(params[:id])
    @microposts = @user.microposts
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end
  
  def edit
  end
  
  def update
    if @user.update(user_params)
      flash[:info] = "User #{@user.name} Profile Edit Success!"
      redirect_to @user
    else
      render 'edit'
    end
  end
  
  def followings
  end
  
  def followers
  end
  
  private

  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation,
                                 :lang, :national, :region,
                                 :like)
  end
  
  def set_user
    @user = User.find(params[:id])
  end
end