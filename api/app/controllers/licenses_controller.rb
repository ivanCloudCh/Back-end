class LicensesController < ApplicationController
  before_action :set_license, only: [:show, :update, :destroy]

  def index
    @license = License.all
    render json: @license
  end

  def show
    render json: @license
  end

  def create
    @license = License.new(license_params)
    if @license.save
      render json: @license, status: :created, location: @license
    else
      render json: @license.errors, status: :unprocessable_entity
    end
  end

  def update
    if @license.update(license_params)
      render json: @license
    else
      render json: @license.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @license.destroy
  end

  private

  def set_license
    @license = License.find(params[:id])
  end

  def license_params
    params.require(:license_params).permit(:nombre, :tipo, :locaciones, :recursos, :estaditicas,)
  end
end
