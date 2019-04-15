require 'test_helper'

Class RehabsControllerTest < ActionDispatch::IntegrationTest
setup do
    @rehab = rehabs(:one)
    @name = "The Great Rehab #{rand(1000)}"
end

test "should create rehab" do
assert_difference('Rehab.count') do
post rehabs_url, params: {
rehab: {
name: @rehab.name,
    address: @rehab.address,
    service: @rehab.service,
    picture_url: @rehab.picture_url,
price: @rehab.price
}
}
end
assert_redirected_to product_url(Product.last)
end


test "should update rehab" do
patch rehab_url(@product), params: {
rehab: {
name: @rehab.name,
    address: @rehab.address,
    service: @rehab.service,
    picture_url: @rehab.picture_url,
price: @rehab.price
}
}
assert_redirected_to rehab_url(@rehab)
end
