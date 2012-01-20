class Professional < ActiveRecord::Base
  belongs_to :designation
  validates_presence_of     :description
end

