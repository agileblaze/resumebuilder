class CreateDesignations < ActiveRecord::Migration
  def self.up
    create_table :designations do |t|
      t.text :designation
        t.timestamps
    end
  end

  def self.down
    drop_table :designations
  end
end
