class SessionsController < ApplicationController
    def new

    end
    def create
        user=Course.find_by(email: params[:session][:email].downcase)
        if user && user.authenticate(params[:session][:password])
            session[:course_id]=user.id
        redirect_to user
        else
            flash.now[:alert]="Something wrong with credentials"
        render 'new'
        end
    end
    def destroy
        session[:course_id]=nil
        redirect_to root_path
    end
end
