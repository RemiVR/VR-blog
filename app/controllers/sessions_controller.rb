class SessionsController < ApplicationController

	include SessionsHelper
  
  def new
  end
  
  def create
  	user = User.find_by_email(params[:email])
  	if user && user.authenticate(params[:password])
  		log_in user
  		redirect_to manager_path
  	else
  		render 'new'
  		flash[:alert] = 'Ivalid email or password'
  	end
  end
  
	def destroy
		session.delete(:user_id)
    	redirect_to root_url
	end

end
