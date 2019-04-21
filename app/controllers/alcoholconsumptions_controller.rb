class AlcoholconsumptionsController < ApplicationController
  before_action :set_alcoholconsumption, only: [:show, :edit, :update, :destroy]

  # GET /alcoholconsumptions
  # GET /alcoholconsumptions.json
  def index
    @alcoholconsumptions = Alcoholconsumption.all
  end

    def mapjson
        @result = Alcoholconsumption.select("code AS code3, entity AS name, consumption AS value") 
        respond_to do |format|
            format.json do
                render json: @result
        end
            end
    end 
    
  # GET /alcoholconsumptions/1
  # GET /alcoholconsumptions/1.json
  def show
     @alcoholconsumptions = Alcoholconsumption.show
  end

  # GET /alcoholconsumptions/new
  def new
    @alcoholconsumption = Alcoholconsumption.new
  end

  # GET /alcoholconsumptions/1/edit
  def edit
  end

  # POST /alcoholconsumptions
  # POST /alcoholconsumptions.json
  def create
    @alcoholconsumption = Alcoholconsumption.new(alcoholconsumption_params)

    respond_to do |format|
      if @alcoholconsumption.save
        format.html { redirect_to @alcoholconsumption, notice: 'Alcoholconsumption was successfully created.' }
        format.json { render :show, status: :created, location: @alcoholconsumption }
      else
        format.html { render :new }
        format.json { render json: @alcoholconsumption.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alcoholconsumptions/1
  # PATCH/PUT /alcoholconsumptions/1.json
  def update
    respond_to do |format|
      if @alcoholconsumption.update(alcoholconsumption_params)
        format.html { redirect_to @alcoholconsumption, notice: 'Alcoholconsumption was successfully updated.' }
        format.json { render :show, status: :ok, location: @alcoholconsumption }
      else
        format.html { render :edit }
        format.json { render json: @alcoholconsumption.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alcoholconsumptions/1
  # DELETE /alcoholconsumptions/1.json
  def destroy
    @alcoholconsumption.destroy
    respond_to do |format|
      format.html { redirect_to alcoholconsumptions_url, notice: 'Alcoholconsumption was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alcoholconsumption
      @alcoholconsumption = Alcoholconsumption.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alcoholconsumption_params
      params.require(:alcoholconsumption).permit(:entity, :code, :year, :consumption, :latitude, :longitude, :longitude, :search)
    end
end
