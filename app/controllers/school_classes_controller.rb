class SchoolClassesController < ApplicationController
    def new
        @post = Post.new
    end

    def create
        @school_class = SchoolClass.create(school_classes_params(:title, :room_number))
        redirect_to school_class_path(@school_class)
    end

    def show
        @school_class = SchoolClass.find(params[:id])
    end

    def edit
    end

    def update
    end

    private

    def school_classes_params(*args)
        params.require(:school_class).permit(*args)
    end
end