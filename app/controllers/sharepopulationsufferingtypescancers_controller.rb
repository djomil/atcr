class SharepopulationsufferingtypescancersController < ApplicationController
  before_action :set_sharepopulationsufferingtypescancer, only: [:show, :edit, :update, :destroy]

  # GET /sharepopulationsufferingtypescancers
  # GET /sharepopulationsufferingtypescancers.json
  def index
    @sharepopulationsufferingtypescancers = Sharepopulationsufferingtypescancer.page params[:page]
 @sharepopulationsufferingtypescancers = Sharepopulationsufferingtypescancer.all
 @sharepopulationsufferingtypescancers = Sharepopulationsufferingtypescancer.where(entity: 'World', year: [2013, 2014, 2015, 2016])
      puts @sharepopulationsufferingtypescancers.inspect 
      @sharepopulationsufferingtypescancers_entity = []
      @sharepopulationsufferingtypescancer_year = []
      @sharepopulationsufferingtypescancer_colon_and_rectum_cancer = []
      @sharepopulationsufferingtypescancer_stomach_cancer = []
      @sharepopulationsufferingtypescancer_liver_cancer = []
      @sharepopulationsufferingtypescancers.each_with_index do |sharepopulationsufferingtypescancer, i|
          @sharepopulationsufferingtypescancers_entity[i] = []
          p sharepopulationsufferingtypescancer.to_s
          p sharepopulationsufferingtypescancer.year 
          p sharepopulationsufferingtypescancer.colon_and_rectum_cancer.round
          p sharepopulationsufferingtypescancer.stomach_cancer.round
          p sharepopulationsufferingtypescancer.liver_cancer.round
          @sharepopulationsufferingtypescancer_year << sharepopulationsufferingtypescancer.year
          @sharepopulationsufferingtypescancer_colon_and_rectum_cancer << sharepopulationsufferingtypescancer.colon_and_rectum_cancer
          @sharepopulationsufferingtypescancer_stomach_cancer << sharepopulationsufferingtypescancer.stomach_cancer
          @sharepopulationsufferingtypescancer_liver_cancer << sharepopulationsufferingtypescancer.liver_cancer
      #    @sharepopulationsufferingtypescancer_colon_and_rectum_cancer.round
       #   @sharepopulationsufferingtypescancer_stomach_cancer.round
       #   @sharepopulationsufferingtypescancer_liver_cancer.round
          end
      puts @sharepopulationsufferingtypescancers_entity.inspect
      puts @ready.inspect
  end
      


  # GET /sharepopulationsufferingtypescancers/1
  # GET /sharepopulationsufferingtypescancers/1.json
  def show
                  #list_countries = Country.find(4)
  #remove hash	@countries = Country.all
  #remove hash	@json_show = @country.as_json
  #remove hash    @hash = Gmaps4rails.build_markers(@countries) do |country, marker|
 #remove hash marker.lat country.latitude
  #remove hashmarker.lng country.longitude
  #remove hash    end
  end

  # GET /sharepopulationsufferingtypescancers/new
  def new
    @sharepopulationsufferingtypescancer = Sharepopulationsufferingtypescancer.new
  end

  # GET /sharepopulationsufferingtypescancers/1/edit
  def edit
  end

  # POST /sharepopulationsufferingtypescancers
  # POST /sharepopulationsufferingtypescancers.json
  def create
    @sharepopulationsufferingtypescancer = Sharepopulationsufferingtypescancer.new(sharepopulationsufferingtypescancer_params)

    respond_to do |format|
      if @sharepopulationsufferingtypescancer.save
        format.html { redirect_to @sharepopulationsufferingtypescancer, notice: 'Sharepopulationsufferingtypescancer was successfully created.' }
        format.json { render :show, status: :created, location: @sharepopulationsufferingtypescancer }
      else
        format.html { render :new }
        format.json { render json: @sharepopulationsufferingtypescancer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sharepopulationsufferingtypescancers/1
  # PATCH/PUT /sharepopulationsufferingtypescancers/1.json
  def update
    respond_to do |format|
      if @sharepopulationsufferingtypescancer.update(sharepopulationsufferingtypescancer_params)
        format.html { redirect_to @sharepopulationsufferingtypescancer, notice: 'Sharepopulationsufferingtypescancer was successfully updated.' }
        format.json { render :show, status: :ok, location: @sharepopulationsufferingtypescancer }
      else
        format.html { render :edit }
        format.json { render json: @sharepopulationsufferingtypescancer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sharepopulationsufferingtypescancers/1
  # DELETE /sharepopulationsufferingtypescancers/1.json
  def destroy
    @sharepopulationsufferingtypescancer.destroy
    respond_to do |format|
      format.html { redirect_to sharepopulationsufferingtypescancers_url, notice: 'Sharepopulationsufferingtypescancer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sharepopulationsufferingtypescancer
      @sharepopulationsufferingtypescancer = Sharepopulationsufferingtypescancer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sharepopulationsufferingtypescancer_params
      params.require(:sharepopulationsufferingtypescancer).permit(:entity, :code, :year, :liver_cancer, :larynx_cancer, :kidney_cancer, :breast_cancer, :thyroid_cancer, :stomach_cancer, :uterine_cancer, :ovarian_cancer, :bladder_cancer, :prostate_cancer, :cervical_cancer, :pancreatic_cancer, :esophageal_cancer, :testicular_cancer, :nasopharynx_cancer, :colon_and_rectum_cancer, :non_melanoma_skin_cancer, :lip_and_oral_cancer, :brain_and_nervous_system_cancer, :tracheal_bronchus_and_lung_cancer, :gallbladder_and_biliary_tract_cancer)
    end
end
