class CreateUserResumes < ActiveRecord::Migration
  def self.up
    create_table :user_resumes do |t|
      t.integer :user_id
      t.string  :filename
      t.string  :content_type
      t.integer :size
      t.timestamps
    end
  end

  def self.down
    drop_table :user_resumes
  end
end
