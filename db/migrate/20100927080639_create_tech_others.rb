class CreateTechOthers < ActiveRecord::Migration
  def self.up
    create_table :tech_others do |t|
      t.integer :user_id
      t.text :titlle
      t.text :name
      t.timestamps
    end
  end

  def self.down
    drop_table :tech_others
  end
end
