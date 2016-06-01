class VolunteerSessionsController < ApplicationController
  def new
  end

  def create
    
    @volunteer = Volunteer.find_by_email(params[:volunteer_session][:email])

    if @volunteer && @volunteer.authenticate(params[:volunteer_session][:password])
      session[:volunteer_id] = @volunteer.id
          
      redirect_to '/'
    else 
      @error = 'password or username wrong try again sucker'
      render :new
    end
  end
  
  def destroy
    session[:volunteer_id] = nil
    redirect_to '/'
  end
  
end

