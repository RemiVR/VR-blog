class ProjectsController < ApplicationController
	
	load_and_authorize_resource

	def index
		@projects = Project.all
	end


	def new
	end

	def create
		@project = Project.new(project_params)
		if @project.save
			redirect_to projects_path
		else
			render 'new'
		end
	end

	def show
		@project = Project.find(params[:id])
	end

	def edit
		@project = Project.find(params[:id])
	end

	def update
		@project = Project.find(params[:id])	

		if @project.update_attributes(project_params)
			redirect_to @project
		else	
			render 'edit'
		end
	end

	def destroy
		@project = Project.find(params[:id])
		@project.destroy

		redirect_to root_path
	end


	private

		def project_params
			params.require(:project).permit(:title, :link, :description)
		end

end
