class CreateProfessionalSummaries < ActiveRecord::Migration
  def self.up
    create_table :professional_summaries do |t|
      t.integer :user_id
      t.text :summary
      t.integer :priority, :default=>1
      t.timestamps
    end
  end

  def self.down
    drop_table :professional_summaries
  end
end
