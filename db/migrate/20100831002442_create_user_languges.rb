class CreateUserLanguges < ActiveRecord::Migration
  def self.up
    create_table :user_languges do |t|
      t.integer :user_id
      t.integer :languge_id
      t.timestamps
    end
  end

  def self.down
    drop_table :user_languges
  end
end