#programmers_controller.rb
#app/controllers/programmers_controller.rb
#copy to m2m_m1/app/controllers/programmers_controller.rb
# Includes modifications for active_scaffold
class ProgrammersController < ApplicationController
  # GET /programmers
  # GET /programmers.xml
	active_scaffold :programmer do |config|
		config.columns = [:first_name, :last_name, :projects]
 		config.columns[:projects].associated_limit = 1000
		config.columns[:projects].form_ui = :select
		list.columns.exclude :assignments
	end
end