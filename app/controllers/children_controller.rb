class ChildrenController < ApplicationController
  def index
    @children = Child.all
  end
  
  def show
    @child = Child.find(params[:id])
  end
  
  def new
    @child = Child.new
  end

  def create
  	@child = Child.new(child_params)
  	@child.save
  end

  def child_params
  	params.require(:child).permit(:child_first_name, :child_last_name, :family_id)
  end
end