class UsersController < ApplicationController
	def index
		# session.clear
		@user = User.new
	end

	def show
		@user = User.find(current_user)
	end

	def new
		@user = User.new
	end

	def create
		if params[:user][:password] != params[:user][:password_confirmation]
			@errors = ["ERROR: Passwords Don't Match!"]
			redirect_to '/'
		else
			user = User.new(user_params)
			if user.save
				session[:id] = user.id
				redirect_to user 
			else
				redirect_to '/signup'
			end
		end
	end

	private
	def user_params
		params.require(:user).permit(:name, :email, :password, :role )
	end
end
