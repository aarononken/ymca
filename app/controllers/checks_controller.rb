class ChecksController < ApplicationController
	before_action :require_family
	  
	def new
		if !current_family
			redirect_to new_session_path, alert: "Please sign in first."
			return
		end

		@check = Check.new
	end

	def create
		if !current_family
			redirect_to new_session_path, alert: "Please sign in first."
			return
		end

		@check = Check.new(check_params)
		@check.family_id = current_family.id

		if @check.save
			redirect_to new_check_path, notice: "Thanks!"
		else
			redirect_to :back, alert: "Something went wrong! Try again."
		end
	end
	  
	def check_params
		params.require(:check).permit(:family_id, :child_id, :checked_in, :program_id)
	end

end