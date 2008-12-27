class ProjectsController < ApplicationController
  # GET /projects
  # GET /projects.xml
	active_scaffold :project do |config|
	config.columns = [:project_name, :programmers]
	config.columns[:programmers].associated_limit = 1000
	config.columns[:programmers].form_ui = :select
	list.columns.exclude :assignments
	end
end
