class AdddropOperatingSys < ActiveRecord::Migration
  def self.up
    rename_column :user_os, :os_id, :operating_sy_id
  end

  def self.down
  end
end
