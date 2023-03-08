class StudentsController < ApplicationController

  @@students_array = []

  def index
    # students = Student.all
    # students.find_by(first_name: params[:first_name], last_name: params[:last_name])
    students = Student.search(params[:name])
    render json: students
  end

  def show
    student = Student.find_by(id: params[:id])
    render json: student
  end


end
