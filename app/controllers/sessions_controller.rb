class SessionsController < ApplicationController
	def new
		render
	end

	def create
		family = Family.find_by(parent_last_name: params[:parent_last_name])

		if family && family.authentic?(params[:password])
			session[:family_id] = family.id
			redirect_to new_check_path, notice: "Thanks!"
		else
			redirect_to new_check_path, alert: "Something went wrong. Try again."
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to root_url, notice: "Come back soon!"
	end
end