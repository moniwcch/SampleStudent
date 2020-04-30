class CategoriesController < ApplicationController
    before_action :require_admin,except: [:index,:show]
    def index
        @category=Category.all
    end
    def new
        @category=Category.new()
    end
    def show
        @category=Category.find(params[:id])
        # @category_students=@category.students
    end
    def create
        @category=Category.new(params.require(:category).permit(:name))
       if @category.save
        redirect_to categories_path()
       else
        render 'new'
       end
    end
    def edit
        @category=Category.find(params[:id])
    end
    def update
        @category=Category.find(params[:id])
        if @category.update(params.require(:category).permit(:name))
            redirect_to category_path(@category)
        else
            render 'edit'
    end
end
private 
 def require_admin
 if !logged_in? || (logged_in? && !current_user.admin?)
    redirect_to login_path()
 
 end
 end
end