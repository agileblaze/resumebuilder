class AddcolUserpin < ActiveRecord::Migration
  def self.up
    add_column :users, :pin, :integer
  end

  def self.down
  end
end
