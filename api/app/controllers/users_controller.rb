class UsersController < ApplicationController
  before_action :set_users, only: [:show, :update, :destroy]

  def index
    @user = User.all
    render json: @user
  end

  def show
    render json: @user
  end

  def create
    @user = User.new(users_params)
    if @user.save
      render json: @user, status: :created, User: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def update
    if @user.update(users_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @user.destroy
  end

  private

  def set_users
    @user = User.find(params[:id])
  end

  def users_params
    params.require(:users_params).permit(:email, :password, :password_confirmation, :name, :last_name, :last_mother_name, :phone, :deleted,  :type_user_id)
  end
end
