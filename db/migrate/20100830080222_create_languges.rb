class CreateLanguges < ActiveRecord::Migration
  def self.up
    create_table :languges do |t|
      t.string :languge
      t.timestamps
    end
  end

  def self.down
    drop_table :languges
  end
end
