require 'test_helper'

class UsersControllerTest < ActionController::TestCase
	
	setup do
		@input_attributes = {
			name: "remi",
			email: "remi@bombom.com",
			password: "asdf",
			password_confirmation: "asdf"
		}

		@user = users(:one)
	end

		test "should create user" do
			assert_difference('User.count') do
				post :create, user: @input_attributes
			end

			assert_redirected_to user_path(@user.id)
		end

		test "should update user" do
			put :update, id: @user, user: @input_attributes
			assert_redirected_to user_path
		end


end

