class CoursesController < ApplicationController
    before_action:req_same_user,except: [:new,:create,:show,:index]
    def new
        @course=Course.new
    end
    def create
    @course=Course.new(course_params)
    if  @course.save

        redirect_to course_path(@course.id)
    else
        render 'new'
    end    
    end
    def index
        @course=Course.paginate(page: params[:page],per_page: 5)
    end
    def edit
        @course=Course.find(params[:id])
    end
    def update
    @course=Course.find(params[:id])
    if  @course.update(course_params) 
    redirect_to @course
    else 
        render 'edit'
    end
    end
    def show
    @course=Course.find(params[:id])
    @student=@course.students.paginate(page: params[:page],per_page: 5)
    end

    private
    def course_params
    params.require(:course).permit(:username,:email,:password)
    end
    def req_same_user
    if !logged_in? || current_user != @course
        redirect_to courses_path()
    end
    end
end
