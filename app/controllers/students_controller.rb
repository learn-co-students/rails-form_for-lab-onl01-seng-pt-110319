class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def show
    find_student
  end

  def create
    @student = Student.new(student_params)
    @student.save
    redirect_to_student_path
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    find_student
    @student.update(student_params)
    redirect_to_student_path
  end


  private 

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end

  def find_student
    @student = Student.find(params[:id])
  end

  def redirect_to_student_path
    redirect_to student_path(@student)
  end
end
