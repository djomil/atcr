class StoreController < ApplicationController
    
    before_action :authenticate_user!
    
    include CurrentCart
    before_action :set_cart
    def index
      @rehab = Rehab.order(:name)
  end
end
