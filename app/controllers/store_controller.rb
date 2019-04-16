class StoreController < ApplicationController
    def index
      @rehab = Rehab.order(:name)
  end
end
