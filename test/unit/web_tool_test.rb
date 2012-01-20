require File.dirname(__FILE__) + '/../test_helper'
class WebToolTest < ActiveSupport::TestCase
fixtures :web_tools
  def test_save
    web_tool = WebTool.new
                   #:web_tool => web_tools(:fireworks).title,
                   # :created_at => web_tools(:fireworks).created_at
    web_tool.web_tool= '123456'
    assert web_tool.save
  end
 def test_update
   web_tool= WebTool.new
   assert web_tool.update_attributes(:web_tool=>"fireworks")
   #assert_equal("aaaaa",web_tool.web_tool)
   #assert_not_nil web_tool.web_tool
 end

end
