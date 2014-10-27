class Website::StagesController < ApplicationController
  before_action :set_website_stage, only: [:show, :edit, :update, :destroy]

  # GET /website/stages
  # GET /website/stages.json
  def index
    @clapme_stages = Clapme::Stage.all
  end

  # GET /website/stages/1
  # GET /website/stages/1.json
  def show
  end

  # GET /website/stages/new
  def new
    @clapme_stage = Clapme::Stage.new
  end

  # GET /website/stages/1/edit
  def edit
  end

  # POST /website/stages
  # POST /website/stages.json
  def create
    @clapme_stage = Clapme::Stage.new(website_stage_params)

    respond_to do |format|
      if @clapme_stage.save
        format.html { redirect_to website_stage_url(@clapme_stage.id), notice: 'Stage was successfully created.' }
        format.json { render action: 'show', status: :created, location: @clapme_stage }
      else
        format.html { render action: 'new' }
        format.json { render json: @clapme_stage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /website/stages/1
  # PATCH/PUT /website/stages/1.json
  def update
    respond_to do |format|
      if @clapme_stage.update(website_stage_params)
        format.html { redirect_to website_stage_url(@clapme_stage.id), notice: 'Stage was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @clapme_stage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /website/stages/1
  # DELETE /website/stages/1.json
  def destroy
    @clapme_stage.destroy
    respond_to do |format|
      format.html { redirect_to website_stages_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_website_stage
      @clapme_stage = Clapme::Stage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def website_stage_params
      params.require(:stage).permit(:name, :description, :slug, :has_partner, :image_background, :color_background)
    end
end
