class StudentsController < ApplicationController
before_action:set_articles, only: [:show,:destroy,:edit,:update]
    def show
        
    end
    def index
        @student=Student.paginate(page: params[:page],per_page: 5)
    end
    def new
        @student=Student.new
    end
    def create
        @student=Student.new(set_params)
        @student.course=Course.first
        # render plain: student.inspect
        if @student.save
            redirect_to @student
        else
        render 'new'
        end
    end
    def edit
        
    end
    def update
    
    student=@student.update(set_params)
    redirect_to @student
      end
     def destroy
       
        @student.destroy
        redirect_to students_path
     end
     private
     def set_articles
        @student=Student.find(params[:id])
     end
     def set_params
        params.require(:student).permit(:firstname, :roll)
    end
end 