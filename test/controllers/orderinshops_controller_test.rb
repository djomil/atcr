require 'test_helper'
require 'capybara'

Class OrderinShopsControllerTest < ActionDispatch::IntegrationTest

test "requires item in cart" do
 get new_orderinshop_url
 assert_redirected_to store_index_path
 assert_equal flash[:notice], 'Your cart is empty'
 end

test "should get new" do
 post line_items_url, params: { rehab_id: rehabs(:ruby).id }

get new_order_url
assert_response :success
end

test "should create order" do
assert_difference('Orderinshop.count') do
post orders_url, params: { order: { address: @orderinshop.address,
email: @orderinshop.email, name: orderinshop.name,
pay_type: @orderinshop.pay_type } }
end
 assert_redirected_to store_index_url
end