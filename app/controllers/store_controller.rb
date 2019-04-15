class StoreController < ApplicationController
    has_many :rehab
  def index
      @rehabs = Rehab.order(:title)
  end
end
