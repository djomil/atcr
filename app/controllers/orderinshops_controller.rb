class OrderinshopsController < ApplicationController
include CurrentCart
before_action :set_cart, only: [:new, :create]
before_action :ensure_cart_isnt_empty, only: :new
before_action :set_order, only: [:show, :edit, :update, :destroy]

  # GET /orderinshops
  # GET /orderinshops.json
  def index
    @orderinshops = Orderinshop.all
  end

  # GET /orderinshops/1
  # GET /orderinshops/1.json
  def show
  end

  # GET /orderinshops/new
  def new
    @orderinshop = Orderinshop.new
  end

  # GET /orderinshops/1/edit
  def edit
  end

  # POST /orderinshops
  # POST /orderinshops.json
  def create
    @orderinshop = Orderinshop.new(orderinshop_params)
      @orderinshop.add_line_items_from_cart(@cart)

    respond_to do |format|
      if @orderinshop.save
          Cart.destroy(session[:cart_id])
          session[:cart_id] = nil
          OrderinshopMailer.received(@orderinshop).deliver_later
          format.html { redirect_to  new_orderinshop_path }
          format.json { render :show, status: :created, location: @orderinshop }
      else
        format.html { render :new }
        format.json { render json: @orderinshop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orderinshops/1
  # PATCH/PUT /orderinshops/1.json
  def update
    respond_to do |format|
      if @orderinshop.update(orderinshop_params)
        format.html { redirect_to @orderinshop, notice: 'Orderinshop was successfully updated.' }
        format.json { render :show, status: :ok, location: @orderinshop }
      else
        format.html { render :edit }
        format.json { render json: @orderinshop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orderinshops/1
  # DELETE /orderinshops/1.json
  def destroy
    @orderinshop.destroy
    respond_to do |format|
      format.html { redirect_to orderinshops_url, notice: 'Orderinshop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orderinshop
      @orderinshop = Orderinshop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def orderinshop_params
      params.require(:orderinshop).permit(:name, :address, :email, :pay_type)
    end
    
    private
    def ensure_cart_isnt_empty
 if @cart.line_items.empty?
 redirect_to store_index_url, notice: 'You bought successfully your order'
 end
 end
    
end
