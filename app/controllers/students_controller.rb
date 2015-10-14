class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    @student.save
    redirect_to students_path
  end

  def edit
    @student = Student.find(params[:id])
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to students_path
  end

  def update
    @student = Student.find(params[:id])
    @student.save(student_params)
    redirect_to students_path
  end

  def show
    @student = Student.find(params[:id])
    
  end

  def student_params
    params.require(:student).permit(:name, :phone_number, :email)
  end
end
