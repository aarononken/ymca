class MembershipsController < ApplicationController
  def index
    @memberships = Membership.all
  end
  
  def new
    @membership = Membership.new
  end
  
  def create (membership_params)
    @membership = Membership.new
    @membership.save
  end
  
  def membership_params
    params.require(:membership).permit(:child_id, :family_id, :program_id)
  end
end