class Website::PartnersController < ApplicationController
  before_action :set_clapme_partner, only: [:show, :edit, :update, :destroy]

  # GET /website/partners
  # GET /website/partners.json
  def index
    @clapme_partners = Clapme::Partner.all
  end

  # GET /website/partners/1
  # GET /website/partners/1.json
  def show
  end

  # GET /website/partners/new
  def new
    @clapme_partner = Clapme::Partner.new
  end

  # GET /website/partners/1/edit
  def edit
  end

  # POST /website/partners
  # POST /website/partners.json
  def create
    @clapme_partner = Clapme::Partner.new(clapme_partner_params)

    respond_to do |format|
      if @clapme_partner.save
        format.html { redirect_to website_partner_url(@clapme_partner.id), notice: 'Partner was successfully created.' }
        format.json { render action: 'show', status: :created, location: @clapme_partner }
      else
        format.html { render action: 'new' }
        format.json { render json: @clapme_partner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /website/partners/1
  # PATCH/PUT /website/partners/1.json
  def update
    respond_to do |format|
      if @clapme_partner.update(clapme_partner_params)
        format.html { redirect_to website_partner_url(@clapme_partner.id), notice: 'Partner was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @clapme_partner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /website/partners/1
  # DELETE /website/partners/1.json
  def destroy
    @clapme_partner.destroy
    respond_to do |format|
      format.html { redirect_to website_partners_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clapme_partner
      @clapme_partner = Clapme::Partner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clapme_partner_params
      params.require(:partner).permit(:name, :email, :description)
    end
end
