class CreateDatabases < ActiveRecord::Migration
  def self.up
    create_table :databases do |t|
      t.string :database
      t.timestamps
    end
  end

  def self.down
    drop_table :databases
  end
end
