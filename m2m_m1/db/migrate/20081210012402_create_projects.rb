#20081210012402_create_projects.rb
# copy to m2m_m1/db/migrate/20081210012402_create_projects.rb
class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string :project_name, :null => false
    end
  end

  def self.down
    drop_table :projects
  end
end