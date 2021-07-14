class SettingsController < ApplicationController
  before_action :set_setting, only: [:show, :update, :destroy]

  def index
    @setting = Setting.all
    render json: @setting
  end

  def show
    render json: @setting
  end

  def create
    @setting = Setting.new(setting_params)
    if @setting.save
      render json: @setting, status: :created, location: @setting
    else
      render json: @setting.errors, status: :unprocessable_entity
    end
  end

  def update
    if @setting.update(setting_params)
      render json: @setting
    else
      render json: @setting.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @setting.destroy
  end

  private

  def set_setting
    @setting = Setting.find(params[:id])
  end

  def setting_params
    params.require(:setting_params).permit(:nombre, :puesto, :e_mail, :contraseña)
  end
end
