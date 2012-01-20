class Languge < ActiveRecord::Base
   has_many :user_languges
   has_many :users,:through=>:user_languges
   has_and_belongs_to_many :users
   validates_presence_of     :languge
   validates_uniqueness_of   :languge,:case_sensitive => false
end
