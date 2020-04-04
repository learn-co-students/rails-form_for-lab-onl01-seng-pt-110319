class SchoolClassesController < ApplicationController
  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(school_class_params)
    @school_class.save
    redirect_to_school_class_path
  end

  def edit
   find_school_class
  end

  def update
    find_school_class
    @school_class.update(school_class_params)
    redirect_to_school_class_path
  end


  private

  def school_class_params
    params.require(:school_class).permit(:title, :room_number)
  end

  def find_school_class
    @school_class = SchoolClass.find(params[:id])
  end

  def redirect_to_school_class_path
    redirect_to school_class_path(@school_class)
  end
end
