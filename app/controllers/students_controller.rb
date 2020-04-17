class StudentsController < ApplicationController

    def index 
        @student = Student.all 
    end

    def show 
        current_student
    end

    def new
        @student = Student.new
    end

    def create 
        @student = Student.create(student_params(:first_name, :last_name))
        redirect
    end

    def update
        current_student
        @student.update(student_params(:first_name, :last_name))
        redirect
    end

    def edit
        current_student
    end
    

    private

    def student_params(*args)
        params.require(:student).permit(*args)
    end

    def current_student
        @student = Student.find(params[:id])
    end

    def redirect
        redirect_to student_path(@student)
    end
end