class OperatingSystem < ActiveRecord::Base
  has_many :user_operating_systems
   validates_presence_of     :name
    validates_uniqueness_of   :name,:case_sensitive => false
end
