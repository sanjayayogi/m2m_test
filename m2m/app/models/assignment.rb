# Model #1
# assignment.rb
# copy to  m2m_m1/app/models/assignment.rb
## Sets up a many to many relationship for programmer and project
## Assignment table holds relationships of programmers and projects
class Assignment < ActiveRecord::Base
  belongs_to :programmer  # foreign key - programmer_id
  belongs_to :project     # foreign key - project_id
end