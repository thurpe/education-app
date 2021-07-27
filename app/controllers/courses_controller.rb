class CoursesController < ApplicationController

    def index
        @courses = Course.all
    end

    def new
        @courses = Course.new
    end


end