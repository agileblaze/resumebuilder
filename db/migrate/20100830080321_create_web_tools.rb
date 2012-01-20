class CreateWebTools < ActiveRecord::Migration
  def self.up
    create_table :web_tools do |t|
      t.string :web_tool
      t.timestamps
    end
  end

  def self.down
    drop_table :web_tools
  end
end
