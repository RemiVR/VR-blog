class UsersController < ApplicationController

	load_and_authorize_resource

	def index
			@users = User.all
	end	

	def new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to users_path
		else
			render 'new'
		end
	end

	def show
	end

	def edit
	end

	def update
		if @user.update_attributes user_params
			redirect_to users_path
		else
			render 'edit'
		end
	end

	def destroy
		User.find(params[:id]).destroy
		flash[:success] = "User deleted"
		redirect_to users_path
	end

	private

		def user_params
			params.require(:user).permit(:name, :email, :password, :password_confirmation, :admin)
		end

end
