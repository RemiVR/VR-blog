class ManagersController < ApplicationController

	include SessionsHelper
	
	authorize_resource :class => false

  def index
  end

end
