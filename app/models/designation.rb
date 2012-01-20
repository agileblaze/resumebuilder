class Designation < ActiveRecord::Base
  has_many :professional
   validates_presence_of     :designation
    validates_uniqueness_of   :designation,:case_sensitive => false
end
