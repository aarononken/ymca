class SessionsController < ApplicationController
	def new
		render
	end

	def create
    family = Family.authenticate(params[:parent_last_name], params[:password])

		if family
      session[:family_id] = family.id
      redirect_to root_url, notice: "Welcome!"
		else
      flash.now.alert = "Invalid last name or password."
      render "new"
		end
	end

	def destroy
		session[:family_id] = nil
		redirect_to root_url, notice: "Come back soon!"
	end
end