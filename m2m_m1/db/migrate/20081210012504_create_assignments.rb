#20081210012504_create_assignments.rb
# copy to m2m_m1/db/migrate/20081210012504_create_assignments.rb
## Don’t forget the :id => false. 
## This will create a table with no incrementing unique ID column 
class CreateAssignments < ActiveRecord::Migration
  def self.up
    create_table :assignments do |t|
      t.integer :project_id, :null => false
      t.integer :programmer_id, :null => false
    end
  end

  def self.down
    drop_table :assignments
  end
end