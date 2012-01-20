class Certification < ActiveRecord::Base
  validates_presence_of     :title
    #validates_uniqueness_of   :title,:certification_no, :case_sensitive => false
end
