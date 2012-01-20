class Discipline < ActiveRecord::Base
   has_many :educational
   validates_presence_of     :name
    validates_uniqueness_of   :name,:case_sensitive => false
end
