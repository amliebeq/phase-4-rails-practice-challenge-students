class StudentsController < ApplicationController
    def index
        render json: Student.all
    end

    def destroy
        Student.find(params[:id]).destroy
    end

    def update
        student = Student.find(params[:id])
        student.update(student_params)
        render json: student, status: :created
    end

    def create
        student = Student.create(student_params)
        render json: student, status: :created
    end

    private

    def student_params
        params.permit(:name, :age, :major)
    end
end
