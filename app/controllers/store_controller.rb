class StoreController < ApplicationController
     
    include CurrentCart
    before_action :set_cart
    def index
      @rehab = Rehab.order(:name)
  end
end
