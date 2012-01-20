class CreateRoleResponsibilities < ActiveRecord::Migration
  def self.up
    create_table :role_responsibilities do |t|
      t.integer :user_id
      t.text :role
      t.integer :priority, :default=>1
      t.timestamps
    end
  end

  def self.down
    drop_table :role_responsibilities
  end
end
