#20081210141651_create_programmers.rb
# copy to m2m_m1/db/migrate/20081210141651_create_programmers.rb
class CreateProgrammers < ActiveRecord::Migration
  def self.up
    create_table :programmers do |t|
      t.string :first_name, :null => false
      t.string :last_name, :null => false
    end
  end

  def self.down
    drop_table :programmers
  end
end
