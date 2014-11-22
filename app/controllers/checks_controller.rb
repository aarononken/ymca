class ChecksController < ApplicationController
	  
	def new
		@check = Check.new
	end

	def create
		@check = Check.new(check_params)
	end
	  
	def check_params
		params.require(:check).permit(:family_id, :child_id, :checked_in, :program_id)
	end

end