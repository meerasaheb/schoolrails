class StudentsController < ApplicationController
  before_action :set_student ,only: [:show, :edit,:update,:destroy]
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
    # @school =  params[:school]
    #  puts #{user}
    #  p "control in new pet controller"
  end

  def show
    @student = student.find(params[:id])
  end

  def edit
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to @student
    else
      render :new
  end
end 
  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html{ redirect_to @student, notice: 'User was successfully updated.'}
        format.json {render :show,status: :ok,location:@student}
      else
         format.html{render :edit}
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @student.destroy
    respond_to do |format|
      format.html {redirect_to students_url}
      fromat.json {head :no_content}
    end
      
  end
  private
  def set_student
  @school = Student.find(params[:id]) 
  end
  def student_params
    params.require(:student).permit(:school,:rollnumber,:name,:address,:phonenumber,:email)
  end
end
