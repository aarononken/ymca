class ChecksController < ApplicationController
  
	def new
	  @check = Check.new
	end
  
	def create
	  @check = Check.new
    @check.family_id = Family.find_by(parent_last_name)
  	@check.save
	end
	
end