require 'test_helper'

Class RehabsControllerTest < ActionDispatch::IntegrationTest

test "should create line_item" do
assert_difference('LineItem.count') do
 post line_items_url, params: { rehab_id: rehabs(:Da_Gama_Relief).id }
end
 follow_redirect!

 assert_select 'h2', 'Detoxyne.INC'
 assert_select 'li', "1 \u00D7 Da Gama Relief"         
end
end

test "should update line_item" do
 patch line_item_url(@line_item),
 params: { line_item: { rehab_id: @line_item.rehab_id } }
assert_redirected_to line_item_url(@line_item)
end