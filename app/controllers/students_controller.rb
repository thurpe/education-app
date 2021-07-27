class StudentsController < ApplicationController

    def index
    @students = Student.all
    end

    def show
        @students = Student.find(params[:id])
    end

    def new
    @student = Student.new
    end

    def create
        @student = Student.new(student_params)
        if @student.save
            flash[:success] = "You have successfully signed up"
            redirect_to root_path
        else
            render 'new'
        end
    end

    def edit

    end

    def update
        @student = Student.find(params[:id])
        if @student.update
            flash[:success] = "You have successfully updated your profile"
            redirect_to root_path
        else
            render 'edit'
        end
    end


    private

    def student_params
        params.require(:student).permit(:name, :email)
    end
end