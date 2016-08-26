class SessionsController < ApplicationController
	def new
		# session.clear
	end

	def create
		user = User.find_by_email(params[:email]) if User.find_by_email(params[:email])
		if user && user.authenticate(params[:password])
			session[:id] = user.id
			redirect_to '/proposals'
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