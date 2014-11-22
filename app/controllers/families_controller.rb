class FamiliesController < ApplicationController
  
  def new
    @family = Family.new
  end
  
  def create
    @family = Family.new(family_params)
    @family.save
  end
  
  def index
    @families = Family.all
  end
  
  def show
    @family = Family.find(params[:id])
  end
  
  def family_params
    params.require(:family).permit(:parent_first_name, :parent_last_name, :phone, :spouse_name, :address)
  end
end