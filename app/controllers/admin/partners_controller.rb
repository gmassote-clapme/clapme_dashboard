class Admin::PartnersController < ApplicationController
  before_action :set_admin_partner, only: [:show, :edit, :update, :destroy]

  # GET /admin/partners
  # GET /admin/partners.json
  def index
    @admin_partners = Clapme::Partner.all
  end

  # GET /admin/partners/1
  # GET /admin/partners/1.json
  def show
  end

  # GET /admin/partners/new
  def new
    @admin_partner = Clapme::Partner.new
  end

  # GET /admin/partners/1/edit
  def edit
  end

  # POST /admin/partners
  # POST /admin/partners.json
  def create
    @admin_partner = Clapme::Partner.new(admin_partner_params)

    respond_to do |format|
      if @admin_partner.save
        format.html { redirect_to admin_partner_path(@admin_partner), notice: 'Partner was successfully created.' }
        format.json { render action: 'show', status: :created, location: @admin_partner }
      else
        format.html { render action: 'new' }
        format.json { render json: @admin_partner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/partners/1
  # PATCH/PUT /admin/partners/1.json
  def update
    respond_to do |format|
      if @admin_partner.update(admin_partner_params)
        format.html { redirect_to admin_partner_path(@admin_partner), notice: 'Partner was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @admin_partner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/partners/1
  # DELETE /admin/partners/1.json
  def destroy
    @admin_partner.destroy
    respond_to do |format|
      format.html { redirect_to admin_partners_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_partner
      @admin_partner = Clapme::Partner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_partner_params
      params.require(:partner).permit(:name, :email, :description, :photo_profile, :photo_cover, :clapme_stages_id)
    end
end
