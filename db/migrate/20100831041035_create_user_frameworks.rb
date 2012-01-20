class CreateUserFrameworks < ActiveRecord::Migration
  def self.up
    create_table :user_frameworks do |t|
       t.integer :user_id
      t.integer :framework_id
      t.timestamps
    end
  end

  def self.down
    drop_table :user_frameworks
  end
end
