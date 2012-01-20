class CreatePgs < ActiveRecord::Migration
  def self.up
    create_table :pgs do |t|
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :pgs
  end
end
