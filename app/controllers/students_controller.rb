class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update]
  def index
    @students = Student.all
  end

  def new
    @student = Student.new 
  end

  def create
    @student = Student.new(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    if @student.save 
      redirect_to student_path(@student)
    else 
      redirect_to new_student_path
    end
  end

  def show
  end

  def edit
  end

  def update
    @student.update(student_params(:first_name, :last_name))
    redirect_to student_path
  end

  private 
  def set_student 
    @student = Student.find_by(id: params[:id])
  end

  def student_params(*arg)
    params.require(:student).permit(*arg)
  end

end
