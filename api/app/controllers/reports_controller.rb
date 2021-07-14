class ReportsController < ApplicationController
  before_action :set_report, only: [:show, :update, :destroy]

  def index
    @report = Report.all
    render json: @report
  end

  def show
    render json: @report
  end

  def create
    @report = Report.new(report_params)
    if @report.save
      render json: @report, status: :created, location: @report
    else
      render json: @report.errors, status: :unprocessable_entity
    end
  end

  def update
    if @report.update(report_params)
      render json: @report
    else
      render json: @report.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @report.destroy
  end

  private

  def set_report
    @report = AreaWork.find(params[:id])
  end

  def report_params
    params.require(:report_params).permit(:donde, :quien, :cuando, :que_se_vio,
                                          :que_area, :que_empresa, :lugar_exacto,
                                          :que_vio, :que_accion, :que_tipo, :donde_impacta,
                                          :potencial, :que_tipo_de_peligro, :estatus)
  end
end