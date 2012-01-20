class CreateEducationals < ActiveRecord::Migration
  def self.up
    create_table :educationals do |t|
      t.integer :user_id
      t.string  :qualification
      t.date    :from
      t.date    :to
      t.integer :qualification_name_id
      t.integer :degree_name_id
      t.string  :name
      t.integer :graduation_id
      t.integer :pg_id
      t.integer :discipline_id
      t.integer :university_id
      t.string  :board
      t.string  :institute
      t.integer :percentage
      t.string  :schoolarship
      t.timestamps
    end
  end

  def self.down
    drop_table :educationals
  end
end
