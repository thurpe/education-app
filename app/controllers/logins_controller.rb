class LoginsController < ApplicationController
    skip_before_action :require_user, only: [:new, :create]

    def new

    end

    def create
        student = Student.find_by(email: params[:logins][:email].downcase)
        if student && student.authenticate(params[:logins][:password])
            session[:student_id] = student.id
            flash[:notice] = "Welcome back, #{student.name}!"
            redirect_to student
        else
            flash.now[:notice] = "Incorrect credentials provided. Try again"
            render 'new'
        end
    end


    def destroy
        session[:student_id] = nil
        flash[:notice] = "You have successfully logged out"
        redirect_to root_path
    end


end