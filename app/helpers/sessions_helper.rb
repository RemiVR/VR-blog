module SessionsHelper

	def log_in(user)
		session[:user_id] = user.id
	end

	def current_user
		@current_user ||= User.find_by(id: session[:user_id])
		@current_user
	end

	# def self.log_out
	# 	session.delete(:user_id)
	# 	@current_user = nil
	# end

	def display_login_link
		if current_user.nil?
			link_to "Login", login_path
		else
			link_to "Logout", logout_path, method: :delete
		end
	end

end
