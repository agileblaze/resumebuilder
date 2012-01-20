class CreateCertifications < ActiveRecord::Migration
  def self.up
    create_table :certifications do |t|
      t.integer :user_id
      t.string  :title
      t.integer :priority
      t.string  :certification_no
      t.text    :description
      t.timestamps
    end
  end

  def self.down
    drop_table :certifications
  end
end
