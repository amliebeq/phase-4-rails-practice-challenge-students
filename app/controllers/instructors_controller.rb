class InstructorsController < ApplicationController
    def index
        render json: Instructor.all
    end

    def destroy
        Instructor.find(params[:id]).destroy
    end
end
