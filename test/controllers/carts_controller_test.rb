require 'test_helper'

class CartsControllerTest < ActionDispatch::IntegrationTest

    test "should destroy cart" do
        post line_items_url, params: { rehab_id: rehabs(:one).id }
        @cart = Cart.find(session[:cart_id])
        
        assert_difference('Cart.count', -1) do
            delete cart_url(@cart)
        end
        
         assert_redirected_to store_index_url
    end

end
