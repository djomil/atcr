class StoreController < ApplicationController
    belongs_to :rehab
  def index
      @rehabs = Rehab.order(:title)
  end
end
