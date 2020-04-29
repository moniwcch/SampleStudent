class StudentsController < ApplicationController
    # include ApplicationHelper
before_action:set_articles, only: [:show,:destroy,:edit,:update]
before_action:req_user, except: [:index,:show]
before_action:same_user,only: [:edit,:update,:destroy]
    def show
        
    end
    def index
       
        @student=Student.paginate(page: params[:page],per_page: 5)
        # @course=@student.course
    end
    def new
        @student=Student.new
    end
    def create
        @student=Student.new(set_params)
        @student.course=current_user
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
    def same_user
        if current_user != @student.course and !current_user.admin?
            redirect_to root_path()
    end 
end

end 
