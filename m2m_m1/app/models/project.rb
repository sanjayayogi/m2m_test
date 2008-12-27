# Model #3
# project.rb
# copy to  m2m_m1/app/models/project.rb
## Sets up a many to many relationship for programmer and project
## programmer have many projects and projects have many programmers
class Project < ActiveRecord::Base
  has_many :assignments
  has_many :programmers, :through => :assignments
      def to_label
    "#{project_name}"
  end
end