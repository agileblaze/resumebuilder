class CreateDegreeNames < ActiveRecord::Migration
  def self.up
    create_table :degree_names do |t|
      t.integer       :user_id
      t.string       :name
      t.timestamps
    end
  end

  def self.down
    drop_table :degree_names
  end
end
