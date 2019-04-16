require 'test_helper'

Class RehabsControllerTest < ActionDispatch::IntegrationTest

test "should create line_item" do
assert_difference('LineItem.count') do
 post line_items_url, params: { rehab_id: rehabs(:Da_Gama_Relief).id }
end
 follow_redirect!

 assert_select 'h2', 'Detoxyne.INC'
 assert_select 'li', 'Da Gama Relief'
end
end
