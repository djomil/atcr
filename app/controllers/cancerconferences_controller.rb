class CancerconferencesController < ApplicationController
  before_action :set_cancerconference, only: [:show, :edit, :update, :destroy]

  # GET /cancerconferences
  # GET /cancerconferences.json
  def index
   @cancerconferences = Cancerconference.all
      end
      
      def leafmap
          # MORE COMPLEX QUERY. TRY IT AS SECOND CHOICE
      @cancerconferences = Cancerconference.page params[:page]
         @cancerconferences = Cancerconference.where(event: ['MDS 2019 - 15th International Symposium on Myelodysplastic Syndromes'])
 puts @cancerconferences.inspect 
      @cancerconferences_event = []
      @cancerconference_latitude = []
      @cancerconference_longitude = []
            @cancerconferences.each_with_index do |cancerconference, i|
          @cancerconferences_event[i] = []
          p cancerconference.to_s
          p cancerconference.latitude 
          p cancerconference.longitude
          @cancerconference_latitude << cancerconference.latitude
          @cancerconference_longitude << cancerconference.longitude
         end
      puts @cancerconferences_event.inspect
      puts @dropthemic.inspect      
  end
    
    # EXTENDING THE PREVIOUS QUERY , 'Association for Molecular Pathology (AMP) Global 2019', 'Eleventh Annual ENBDC workshop: Methods in mammary gland biology and breast cancer'
    
  
    #ALTERNATIVE QUERY
      # @data =  []
    # @riskfactorcancerdeaths_sharedeaths = []
    # @riskfactorcancerdeaths.each do |riskfactorcancerdeath|
    #     p riskfactorcancerdeath.to_s
    #     p riskfactorcancerdeath.cause
    #     @data << riskfactorcancerdeath.cause
    #     @riskfactorcancerdeaths_sharedeaths << riskfactorcancerdeath.share_deaths
    #   end
    # @prepared = @data.zip(@riskfactorcancerdeaths_sharedeaths)
    # puts @prepared.inspect
    

  # GET /cancerconferences/1
  # GET /cancerconferences/1.json
  def show
  end

  # GET /cancerconferences/new
  def new
    @cancerconference = Cancerconference.new
  end

  # GET /cancerconferences/1/edit
  def edit
  end

  # POST /cancerconferences
  # POST /cancerconferences.json
  def create
    @cancerconference = Cancerconference.new(cancerconference_params)

    respond_to do |format|
      if @cancerconference.save
        format.html { redirect_to @cancerconference, notice: 'Cancerconference was successfully created.' }
        format.json { render :show, status: :created, location: @cancerconference }
      else
        format.html { render :new }
        format.json { render json: @cancerconference.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cancerconferences/1
  # PATCH/PUT /cancerconferences/1.json
  def update
    respond_to do |format|
      if @cancerconference.update(cancerconference_params)
        format.html { redirect_to @cancerconference, notice: 'Cancerconference was successfully updated.' }
        format.json { render :show, status: :ok, location: @cancerconference }
      else
        format.html { render :edit }
        format.json { render json: @cancerconference.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cancerconferences/1
  # DELETE /cancerconferences/1.json
  def destroy
    @cancerconference.destroy
    respond_to do |format|
      format.html { redirect_to cancerconferences_url, notice: 'Cancerconference was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cancerconference
      @cancerconference = Cancerconference.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cancerconference_params
      params.require(:cancerconference).permit(:event, :location, :country, :latitude, :longitude, :date)
    end
end
