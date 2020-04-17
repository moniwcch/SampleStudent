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
    
    private
    def course_params
    params.require(:course).permit(:username,:email,:password)
    end
end
