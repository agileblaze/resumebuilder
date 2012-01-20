class Framework < ActiveRecord::Base
  #has_many :user_frameworks
  validates_presence_of     :framework
   validates_uniqueness_of   :framework,:case_sensitive => false
end
