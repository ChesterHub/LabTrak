class SessionsController < ApplicationController
	def new
		# Sessions/new
	end

	def create
		user = User.find_by_email(params[:session][:email])
		if user && user.authenticate(params[:session][:password])
			session[:id] = user.id
			redirect_to user
		else
			@errors = ["Login incorrect. Email or password was not entered correctly."]
			redirect_to '/'
		end
	end

	def destroy
		session[:id] = nil
		redirect_to '/'
	end
end