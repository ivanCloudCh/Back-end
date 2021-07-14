class BusinesController < ApplicationController
  before_action :set_busine, only: [:show, :update, :destroy]

  def index
    @busine = Busine.all
    render json: @busine
  end

  def show
    render json: @busine
  end

  def create
    @busine = Busine.new(busine_params)
    if @busine.save
      render json: @busine, status: :created, location: @busine
    else
      render json: @busine.errors, status: :unprocessable_entity
    end
  end

  def update
    if @busine.update(busine_params)
      render json: @busine
    else
      render json: @busine.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @busine.destroy
  end

  private

  def set_busine
    @busine = Busine.find(params[:id])
  end

  def busine_params
    params.require(:busine_params).permit(:empresa, :licencia, :empleados_permitidos, :administradores, :porcentaje_cumplimiento_de_capacitacion)
  end
end
