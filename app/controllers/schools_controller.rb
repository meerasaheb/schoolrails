class SchoolsController < ApplicationController
  before_action :set_school ,only: [:show, :edit,:update,:destroy]
  def index
    @schools = School.all
  end

  def new
    @school = School.new
  end

  def show
    @school = School.find(params[:id])
  end

  def edit
     # @school = School.find(params[:id])
  end

  def create
    @school = School.new(school_params)
    if @school.save
      redirect_to @school
    else 
      render :new
  end
end

  def update
      @school = School.find(params[:id])
    # respond_to do |format|
      if @school.update(school_params)
       redirect_to @school
      
      else
        render :edit 
       
      # end
    end

  end

  def destroy
     @school.destroy
    respond_to do |format|
      format.html { redirect_to schools_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_school
    @school = School.find(params[:id])
  end
  def school_params
    params.require(:school).permit(:name, :address, :phonenumber,:email)
end
end
