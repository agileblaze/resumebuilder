class QualificationName < ActiveRecord::Base
   has_many :educational
   validates_presence_of :name
   validates_uniqueness_of :name
   #validates_uniqueness_of
   #validates_presence_of     :role
end
