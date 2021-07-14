class AreaWorksController < ApplicationController
  before_action :set_areawork, only: [:show, :update, :destroy]

  def index
    @areawork = AreaWork.all
    render json: @areawork
  end

  def show
    render json: @areawork
  end

  def create
    @areawork = AreaWork.new(areawork_params)
    if @areawork.save
      render json: @areawork, status: :created, location: @areawork
    else
      render json: @areawork.errors, status: :unprocessable_entity
    end
  end

  def update
    if @areawork.update(areawork_params)
      render json: @areawork
    else
      render json: @areawork.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @areawork.destroy
  end

  private

  def set_areawork
    @areawork = AreaWork.find(params[:id])
  end

  def areawork_params
    params.require(:areawork_params).permit(:area)
  end
end
