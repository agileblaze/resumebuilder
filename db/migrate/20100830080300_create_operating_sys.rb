class CreateOperatingSys < ActiveRecord::Migration
  def self.up
    create_table :operating_sys do |t|
      t.string :os
      t.timestamps
    end
  end

  def self.down
    drop_table :operating_sys
  end
end
