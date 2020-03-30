class SchoolClassesController < ApplicationController
  before_action :set_find, only: [:show, :edit, :update]

  def index
    @school_classes = SchoolClass.all
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new({title: params[:school_class][:title], room_number: params[:school_class][:room_number]})
    if @school_class.save
    redirect_to school_class_path(@school_class)
    else
      redirect_to school_classes_path
    end  
  end

  def show
  end

  def edit 
  end

  def update 
    @school_class.update(school_class_params(:title, :room_number))
    redirect_to school_class_path(@school_class)
  end

  private 
  def school_class_params(*arg)
    params.require(:school_class).permit(*arg)
  end

  def set_find 
    @school_class = SchoolClass.find_by(id: params[:id])
  end

end
