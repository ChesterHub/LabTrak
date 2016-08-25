class SessionsController < ApplicationController
	def new
		# Sessions/new
	end

	def create
		@user = User.find_by_email(params[:email])
		if @user && @user.authenticate(params[:password])
			session[:id] = user.id
			redirect user
		else
			@errors = ["Login incorrect. Email or password was not entered correctly."]
		end
	end

	def destroy
		session[:id] = nil
		redirect '/login'
	end
end