class AlcoholsController < ApplicationController
  before_action :set_alcohol, only: [:show, :edit, :update, :destroy]

  # GET /alcohols
  # GET /alcohols.json
  def index
    @alcohols = Alcohol.all
          #@json_alcohols = @alcohols.as_json
    #a_alcohol = Alcohol.find(3)
    #@json_alcohols = a_alcohol.as_json
    @json_alcohols = @alcohols.as_json
      
      $json_var = @alcohols
  end

  # GET /alcohols/1
  # GET /alcohols/1.json
  def show
      #list_countries = Country.find(4)
  #remove hash	@countries = Country.all
  #remove hash	@json_show = @country.as_json
  #remove hash    @hash = Gmaps4rails.build_markers(@countries) do |country, marker|
 #remove hash marker.lat country.latitude
  #remove hashmarker.lng country.longitude
  #remove hash    end
  end

  # GET /alcohols/new
  def new
    @alcohol = Alcohol.new
  end

  # GET /alcohols/1/edit
  def edit
  end

  # POST /alcohols
  # POST /alcohols.json
  def create
    @alcohol = Alcohol.new(alcohol_params)

    respond_to do |format|
      if @alcohol.save
        format.html { redirect_to @alcohol, notice: 'Alcohol was successfully created.' }
        format.json { render :show, status: :created, location: @alcohol }
      else
        format.html { render :new }
        format.json { render json: @alcohol.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alcohols/1
  # PATCH/PUT /alcohols/1.json
  def update
    respond_to do |format|
      if @alcohol.update(alcohol_params)
        format.html { redirect_to @alcohol, notice: 'Alcohol was successfully updated.' }
        format.json { render :show, status: :ok, location: @alcohol }
      else
        format.html { render :edit }
        format.json { render json: @alcohol.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alcohols/1
  # DELETE /alcohols/1.json
  def destroy
    @alcohol.destroy
    respond_to do |format|
      format.html { redirect_to alcohols_url, notice: 'Alcohol was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alcohol
      @alcohol = Alcohol.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alcohol_params
      params.require(:alcohol).permit(:entity, :code, :year, :consumption)
    end
end
