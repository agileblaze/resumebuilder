class CreateQualificationNames < ActiveRecord::Migration
  def self.up
    create_table :qualification_names do |t|
      t.integer       :user_id
      t.string       :name
      t.timestamps
    end
  end

  def self.down
    drop_table :qualification_names
  end
end
