class StoreController < ApplicationController
    def index
      @rehab = Rehab.order(:title)
  end
end
