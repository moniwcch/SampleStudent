class PagesController < ApplicationController
   
    def home
    #     p "-----------------------------------"
        p logged_in?
    #     p "---------------------------------"
       redirect_to students_path() if logged_in?
    end
    def about
    end
end
