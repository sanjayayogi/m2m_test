# Model #2
#programmer.rb
# copy to  m2m_m1/app/models/programmer.rb
## Sets up a many to many relationship for programmer and project
## programmer have many projects and projects have many programmers
class Programmer < ActiveRecord::Base
  has_many :assignments
  has_many :projects, :through => :assignments
    def to_label
    "#{first_name} #{last_name}"
  end
end