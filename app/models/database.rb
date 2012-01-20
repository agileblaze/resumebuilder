class Database < ActiveRecord::Base
  has_many :user_database
  validates_presence_of     :database
    validates_uniqueness_of   :database,:case_sensitive => false
end
