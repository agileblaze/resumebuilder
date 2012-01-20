class WebTool < ActiveRecord::Base
  has_many :user_webtool
  validates_presence_of     :web_tool
  validates_uniqueness_of   :web_tool,:case_sensitive => false
  #validates_length_of          :web_tool,:is=>6
end
