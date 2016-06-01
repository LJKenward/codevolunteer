class OrganisationsController < ApplicationController
  before_action :require_org, only:[:index, :show]

  def new
    @organisation = Organisation.new
  end

  def create
    @organisation = Organisation.new(organisation_params)
    if @organisation.save
      session[:organisation_id] = @organisation.id
      redirect_to '/'
    else
      redirect_to '/organisation/signup'
    end
  end

  def index
    @organisations = Organisation.all
  end

   def show
    @organisation = Organisation.find(params[:id])
    @props = @organisation.proposals
    @volunteers = []
    @current_org = current_org
    @props.each do |prop|
      @volunteers << prop.volunteer
    end
   end

  private
    def organisation_params
      params.require(:organisation).permit(:org_name, :first_name, :last_name, :email, :password)
    end  
end