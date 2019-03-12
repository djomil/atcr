class RiskfactorcancerdeathsController < ApplicationController
  before_action :set_riskfactorcancerdeath, only: [:show, :edit, :update, :destroy]

  # GET /riskfactorcancerdeaths
  # GET /riskfactorcancerdeaths.json
  # based on https://www.lugolabs.com/articles/build-a-rss-feed-in-ruby-on-rails [11/3/19]
    # alternatively make an attempt with https://makandracards.com/makandra/730-create-a-valid-rss-feed-in-rails 
  def index
    @riskfactorcancerdeaths = Riskfactorcancerdeath.all
  end
 
    def rss 
@result = Riskfactorcancerdeath(10)
      respond_to do |format|
          format.html
          format.rss { render :layout => false } 
      end
    end
    
  # GET /riskfactorcancerdeaths/1
  # GET /riskfactorcancerdeaths/1.json
  def show
  end

  # GET /riskfactorcancerdeaths/new
  def new
    @riskfactorcancerdeath = Riskfactorcancerdeath.new
  end

  # GET /riskfactorcancerdeaths/1/edit
  def edit
  end

  # POST /riskfactorcancerdeaths
  # POST /riskfactorcancerdeaths.json
  def create
    @riskfactorcancerdeath = Riskfactorcancerdeath.new(riskfactorcancerdeath_params)

    respond_to do |format|
      if @riskfactorcancerdeath.save
        format.html { redirect_to @riskfactorcancerdeath, notice: 'Riskfactorcancerdeath was successfully created.' }
        format.json { render :show, status: :created, location: @riskfactorcancerdeath }
      else
        format.html { render :new }
        format.json { render json: @riskfactorcancerdeath.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /riskfactorcancerdeaths/1
  # PATCH/PUT /riskfactorcancerdeaths/1.json
  def update
    respond_to do |format|
      if @riskfactorcancerdeath.update(riskfactorcancerdeath_params)
        format.html { redirect_to @riskfactorcancerdeath, notice: 'Riskfactorcancerdeath was successfully updated.' }
        format.json { render :show, status: :ok, location: @riskfactorcancerdeath }
      else
        format.html { render :edit }
        format.json { render json: @riskfactorcancerdeath.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /riskfactorcancerdeaths/1
  # DELETE /riskfactorcancerdeaths/1.json
  def destroy
    @riskfactorcancerdeath.destroy
    respond_to do |format|
      format.html { redirect_to riskfactorcancerdeaths_url, notice: 'Riskfactorcancerdeath was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_riskfactorcancerdeath
      @riskfactorcancerdeath = Riskfactorcancerdeath.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def riskfactorcancerdeath_params
      params.require(:riskfactorcancerdeath).permit(:cause, :year, :share_deaths)
    end
end
