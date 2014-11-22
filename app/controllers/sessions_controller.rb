class SessionsController < ApplicationController
	def new
		render
	end

	def create
		family = Family.find_by(:parent_last_name)

		if family && family.authentic?(params[:password])
			session[:family_id] = family.id
			redirect_to root_url, notice: "Thanks!"
		else
			redirect_to root_url, alert: "Something went wrong. Try again."
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to root_url, notice: "Come back soon!"
	end
end