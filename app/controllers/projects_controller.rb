class ProjectsController < ApplicationController
	
	def index
		@projects = Project.all
	end

	def show
		@project = Project.find(params[:id])
	end

	def new
	end

	def create
		@project = Project.new(project_params)
		if @project.save
			redirect_to @project
		else
			redirect_to new_project_path
		end
	end

	private
		def project_params
			params.require(:project).permit(:title, :link, :description)
		end

end
