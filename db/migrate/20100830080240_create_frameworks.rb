class CreateFrameworks < ActiveRecord::Migration
  def self.up
    create_table :frameworks do |t|
      t.string :framework
      t.timestamps
    end
  end

  def self.down
    drop_table :frameworks
  end
end
