class CreateUserOs < ActiveRecord::Migration
  def self.up
    create_table :user_os do |t|
       t.integer :user_id
      t.integer :os_id
      t.timestamps
    end
  end

  def self.down
    drop_table :user_os
  end
end
