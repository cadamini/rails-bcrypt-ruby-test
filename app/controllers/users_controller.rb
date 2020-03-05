class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create 
    @user = User.new(user_params)
    if @user.save
      redirect_to @user, notice: 'User was successfully created.'        
    else
      render :new
    end
  end

  def destroy
    @user.destroy
    redirect_to users_url, notice: 'User was successfully destroyed.'
  end

  def update
    user = User.find_by(username: @user.username).try(:authenticate, params[:current_password])
    if user && @user.update(user_params)
      # sign_in @user # no implemented here
      redirect_to @user, notice: 'Profile updated'
    else
      flash[:error] = 'You entered your current password incorrectly'
      render 'edit'
    end
  end

  private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:username, :title, :firstName, :surname, :password, :password_confirmation)
    end
end