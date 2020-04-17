class CoursesController < ApplicationController
    def new
        @course=Course.new
    end
    def create
    @course=Course.new(course_params)
    if  @course.save

        redirect_to students_path
    else
        render 'new'
    end    
    end
    def index
        @course=Course.all
    end
    def edit
        @course=Course.find(params[:id])
    end
    def update
    @course=Course.find(params[:id])
    if  @course.update(course_params) 
    redirect_to students_path
    else 
        render 'edit'
    end
    end

    private
    def course_params
    params.require(:course).permit(:username,:email,:password)
    end
end
