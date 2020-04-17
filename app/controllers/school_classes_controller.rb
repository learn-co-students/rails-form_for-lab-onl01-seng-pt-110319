class SchoolClassesController < ApplicationController
    def index
        @school_classes = SchoolClass.all 
    end

    def show
        current_class
    end

    def new 
        @school_class = SchoolClass.new
    end

    def create 
        @school_class = SchoolClass.create(school_class_params(:title, :room_number))
        redirect
    end

    def update 
        current_class 
        @school_class.update(school_class_params(:title, :room_number))
        redirect
    end

    def edit
        current_class
    end
    

    private 

    def school_class_params(*args)
        params.require(:school_class).permit(*args)
    end

    def current_class
        @school_class = SchoolClass.find(params[:id])
    end

    def redirect
        redirect_to school_class_path(@school_class)
    end
end