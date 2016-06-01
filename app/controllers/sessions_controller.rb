class SessionsController < ApplicationController
  def new
  end
  def create
    @organisation = Organisation.find_by_email(params[:session][:email])
    if @organisation && @organisation.authenticate(params[:session][:password])
      session[:organisation_id] = @organisation.id
          
      redirect_to '/'
    else 
      @error = 'password or username wrong try again sucker'
      render :new
    end
  end
  
  def destroy
    session[:organisation_id] = nil
    redirect_to '/'
  end
  
end

