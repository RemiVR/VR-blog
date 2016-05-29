require 'rails_helper'

RSpec.describe Project do

	it "is valid with title, description and link" do
		project = Project.new(title: "bubu", description: "this is bubu", link: "bubu.com")
		expect(project).to be_valid
	end
	
	context "" do
		it "is invalid without title"	do
			factory = FactoryGirl.build(:project)

			project = Project.new(title: nil)

			# expect(project).to validate_presence_of(:title)
			# FactoryGirl.build(:project, title: nil).should_not be_valid
			expect(project).not_to be_valid
		end


		it "is invalid without description" do
			project = Project.new(description: nil)
			expect(project).to validate_presence_of(:description)
		end

		it "is invalid without link"
	end

	it "should have unique link"

	# it "is invalid without link" do 
	# 	FactoryGirl.build(:project, link: nil).should_not be_valid
	# end
	
	# it "is invalid withoud description" do
	# 	FactoryGirl.build(:project, description: nil).should_not be_valid
	# end


end