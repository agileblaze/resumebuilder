class CreateUserDatabases < ActiveRecord::Migration
  def self.up
    create_table :user_databases do |t|
       t.integer :user_id
      t.integer  :database_id
      t.timestamps
    end
  end

  def self.down
    drop_table :user_databases
  end
end
