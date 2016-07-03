class SessionsController < ApplicationController

	include SessionsHelper
  
  def new
  end
  
  def create
  	user = User.find_by_email(params[:email])
  	if user && user.authenticate(params[:password])
  		log_in user
  		redirect_to user
  	else
  		render 'new'
  		flash[:alert] = 'Ivalid email or password'
  	end
  end
  
  # def destroy
  # 	session.delete(:user_id)
		# @current_user = nil
		# redirect_to root_url
  # end


	# def create
	# 	@user = User.find_by_email(params[:email])
	# 	if @user && @user.authenticate(params[:password])
	# 		session[:user_id] = @user.id
	# 		redirect_to user_path
 #    else
 #      flash[:error] = "Wrong authentication"
 #    end
 #  		render 'new'
	# end

	def destroy
		# session[:user_id] = nil
		session.delete(:user_id)
    	redirect_to root_url
	end

end
