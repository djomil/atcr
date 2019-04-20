require 'test_helper'

Class OrdersControllerTest < ActionDispatch::IntegrationTest

test "requires item in cart" do
 get new_order_url
 assert_redirected_to store_index_path
 assert_equal flash[:notice], 'Your cart is empty'
 end

test "should get new" do
 post line_items_url, params: { rehab_id: rehabs(:ruby).id }

get new_order_url
assert_response :success
end