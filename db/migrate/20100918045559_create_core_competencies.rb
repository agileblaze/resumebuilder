class CreateCoreCompetencies < ActiveRecord::Migration
  def self.up
    create_table :core_competencies do |t|
      t.integer    :user_id
      t.integer    :priority
      t.text       :description
      t.timestamps
    end
  end

  def self.down
    drop_table :core_competencies
  end
end
