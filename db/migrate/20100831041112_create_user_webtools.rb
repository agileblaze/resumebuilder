class CreateUserWebtools < ActiveRecord::Migration
  def self.up
    create_table :user_webtools do |t|
       t.integer :user_id
      t.integer :web_tool_id
      t.timestamps
    end
  end

  def self.down
    drop_table :user_webtools
  end
end
