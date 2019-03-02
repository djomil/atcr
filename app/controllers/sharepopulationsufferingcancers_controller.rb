class SharepopulationsufferingcancersController < ApplicationController
  before_action :set_sharepopulationsufferingcancer, only: [:show, :edit, :update, :destroy]

  # GET /sharepopulationsufferingcancers
  # GET /sharepopulationsufferingcancers.json
  def index
    @sharepopulationsufferingcancers = Sharepopulationsufferingcancer.all
  end

  # GET /sharepopulationsufferingcancers/1
  # GET /sharepopulationsufferingcancers/1.json
  def show
  end

  # GET /sharepopulationsufferingcancers/new
  def new
    @sharepopulationsufferingcancer = Sharepopulationsufferingcancer.new
  end

  # GET /sharepopulationsufferingcancers/1/edit
  def edit
  end

  # POST /sharepopulationsufferingcancers
  # POST /sharepopulationsufferingcancers.json
  def create
    @sharepopulationsufferingcancer = Sharepopulationsufferingcancer.new(sharepopulationsufferingcancer_params)

    respond_to do |format|
      if @sharepopulationsufferingcancer.save
        format.html { redirect_to @sharepopulationsufferingcancer, notice: 'Sharepopulationsufferingcancer was successfully created.' }
        format.json { render :show, status: :created, location: @sharepopulationsufferingcancer }
      else
        format.html { render :new }
        format.json { render json: @sharepopulationsufferingcancer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sharepopulationsufferingcancers/1
  # PATCH/PUT /sharepopulationsufferingcancers/1.json
  def update
    respond_to do |format|
      if @sharepopulationsufferingcancer.update(sharepopulationsufferingcancer_params)
        format.html { redirect_to @sharepopulationsufferingcancer, notice: 'Sharepopulationsufferingcancer was successfully updated.' }
        format.json { render :show, status: :ok, location: @sharepopulationsufferingcancer }
      else
        format.html { render :edit }
        format.json { render json: @sharepopulationsufferingcancer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sharepopulationsufferingcancers/1
  # DELETE /sharepopulationsufferingcancers/1.json
  def destroy
    @sharepopulationsufferingcancer.destroy
    respond_to do |format|
      format.html { redirect_to sharepopulationsufferingcancers_url, notice: 'Sharepopulationsufferingcancer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sharepopulationsufferingcancer
      @sharepopulationsufferingcancer = Sharepopulationsufferingcancer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sharepopulationsufferingcancer_params
      params.require(:sharepopulationsufferingcancer).permit(:entity, :code, :year, :percentage_population_neoplasms)
    end
end
