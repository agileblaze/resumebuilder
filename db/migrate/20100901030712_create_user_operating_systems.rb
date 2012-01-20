class CreateUserOperatingSystems < ActiveRecord::Migration
  def self.up
    create_table :user_operating_systems do |t|
      t.integer :user_id
      t.integer :operating_system_id
      t.timestamps
    end
  end

  def self.down
    drop_table :user_operating_systems
  end
end
