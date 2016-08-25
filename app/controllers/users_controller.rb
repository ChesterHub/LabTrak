class UsersController < ApplicationController
	def index
		@user = User.new
	end

	def show
		@user = User.find(current_user)
	end

	def new
		@user = User.new
	end

	def create
		user = User.new(user_params)
		if user.save
			sessions[:user_id] = user.id
			redirect user 
		else
			redirect_to '/signup'
		end
	end

	private
	def user_params
		params.require(:user).permit(:name, :email, :password_confirmation, :role )
	end
end
