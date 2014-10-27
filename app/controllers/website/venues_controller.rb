class Website::VenuesController < FormHelperController
  before_action :set_clapme_venue, only: [:show, :edit, :update, :destroy]
  before_action(only: [:create, :update]) do |c|
    c.unmask_params(:venue, [:phone])
  end

  # GET /website/venues
  # GET /website/venues.json
  def index
    @clapme_venues = Clapme::Venue.all
  end

  # GET /website/venues/1
  # GET /website/venues/1.json
  def show
  end

  # GET /website/venues/new
  def new
    @clapme_venue = Clapme::Venue.new
  end

  # GET /website/venues/1/edit
  def edit
  end

  # POST /website/venues
  # POST /website/venues.json
  def create
    @clapme_venue = Clapme::Venue.new(clapme_venue_params)

    respond_to do |format|
      if @clapme_venue.save
        format.html { redirect_to website_venue_url(@clapme_venue.id), notice: 'Venue was successfully created.' }
        format.json { render action: 'show', status: :created, location: @clapme_venue }
      else
        format.html { render action: 'new' }
        format.json { render json: @clapme_venue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /website/venues/1
  # PATCH/PUT /website/venues/1.json
  def update
    respond_to do |format|
      if @clapme_venue.update(clapme_venue_params)
        format.html { redirect_to website_venue_url(@clapme_venue.id), notice: 'Venue was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @clapme_venue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /website/venues/1
  # DELETE /website/venues/1.json
  def destroy
    @clapme_venue.destroy
    respond_to do |format|
      format.html { redirect_to website_venues_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clapme_venue
      @clapme_venue = Clapme::Venue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clapme_venue_params
      params.require(:venue).permit(:name, :email, :description, :venue_type, :phone, :slug, :state, :confirmation_token)
    end
end
