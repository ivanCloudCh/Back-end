class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :update, :destroy]

  def index
    @course = Course.all
    render json: @course
  end

  def show
    render json: @course
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      render json: @course, status: :created, location: @course
    else
      render json: @course.errors, status: :unprocessable_entity
    end
  end

  def update
    if @course.update(course_params)
      render json: @course
    else
      render json: @course.errors, status: :unprocessable_entity
    end
  end

  def assigment
    @employee = Employee.find(params[:employee_id])
    @course = Course.find(params[:course_id])
    cursos = @employee.courses
    cursos.push(@course)
    if @employee.update(:courses => cursos)
      render json: @course
    else
      render json: @course.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @course.destroy
  end

  private

  def set_course
    @course = Course.find(params[:id])
  end

  def course_params
    params.require(:course_params).permit(:nombre, :posicion_de_trabajo, :curso, :fecha_inicio, :fecha_fin, :porcentaje_de_personas_con_curso_vigente)
  end
end
