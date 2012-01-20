class CreateTechProficencies < ActiveRecord::Migration
  def self.up
    create_table :tech_proficencies do |t|
      t.integer :user_id
      t.integer :languge_id
      t.integer :database_id
      t.integer :framework_id
      t.integer :os_id
      t.integer :web_tool
      t.timestamps
    end
  end

  def self.down
    drop_table :tech_proficencies
  end
end
