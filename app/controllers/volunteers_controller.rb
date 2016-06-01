class VolunteersController < ApplicationController
    def new
    @volunteer = Volunteer.new
    end

  def create
    @volunteer = Volunteer.new(volunteer_params)
    if @volunteer.save
      session[:volunteer_id] = @volunteer.id
      redirect_to '/'
    else
      redirect_to '/volunteer/signup'
    end
  end

  def index
    @volunteers = Volunteer.all
  end


  private
    def volunteer_params
      params.require(:volunteer).permit(:first_name, :last_name, :email, :password)
    end  
end
