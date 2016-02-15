require 'rails_helper'

describe Project do
	it "has a valid factory" do
		FactoryGirl.build(:project).should be_valid
	end

	it "it is invalid without title" do
		FactoryGirl.build(:project, title: nil).should_not be_valid
	end

	it "it is invalid without link" do 
		FactoryGirl.build(:project, link: nil).should_not be_valid
	end
	
	it "it is invalid withoud description" do
		FactoryGirl.build(:project, description: nil).should be_valid
	end

	it "returns title as string"
end