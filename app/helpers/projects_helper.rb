module ProjectsHelper

	def list_of_projects
		@projects = Project.all
	end

end
