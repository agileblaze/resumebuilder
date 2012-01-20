class CreateReferanceWorks < ActiveRecord::Migration
  def self.up
    create_table :referance_works do |t|
      t.integer :user_id
      t.string :title
      t.integer :priority, :default=>1
      t.text:description
      t.timestamps
    end
  end

  def self.down
    drop_table :referance_works
  end
end
