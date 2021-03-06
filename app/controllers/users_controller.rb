class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
  		if @user.save
  			sign_in @user
  			flash[:success] = "Welcome!"
  			redirect_to users_path
  		else
  			render 'new'
  		end
	end

	def index
		@users = User.all
	end

	private

		# uses strong parameters
		def user_params
  			params.require(:user).permit(:name, :email, :password,
  											:password_confirmation)
  		end
end
