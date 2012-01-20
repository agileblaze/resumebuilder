class CreateProfessionals < ActiveRecord::Migration
  def self.up
    create_table :professionals do |t|
      t.integer :user_id
      t.text :designation_id,:size=>20000
      t.text  :description,:size=>20000
      t.timestamps
    end
  end

  def self.down
    drop_table :professionals
  end
end
