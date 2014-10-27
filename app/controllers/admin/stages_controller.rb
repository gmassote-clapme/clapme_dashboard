class Admin::StagesController < ApplicationController
  before_action :set_admin_stage, only: [:show, :edit, :update, :destroy]

  # GET /admin/stages
  # GET /admin/stages.json
  def index
    @admin_stages = Clapme::Stage.all
  end

  # GET /admin/stages/1
  # GET /admin/stages/1.json
  def show
  end

  # GET /admin/stages/new
  def new
    @admin_stage = Clapme::Stage.new
  end

  # GET /admin/stages/1/edit
  def edit
  end

  # POST /admin/stages
  # POST /admin/stages.json
  def create
    @admin_stage = Clapme::Stage.new(admin_stage_params)

    respond_to do |format|
      if @admin_stage.save
        format.html { redirect_to admin_stage_url(@admin_stage.id), notice: 'Stage was successfully created.' }
        format.json { render action: 'show', status: :created, location: @admin_stage }
      else
        format.html { render action: 'new' }
        format.json { render json: @admin_stage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/stages/1
  # PATCH/PUT /admin/stages/1.json
  def update
    respond_to do |format|
      if @admin_stage.update(admin_stage_params)
        format.html { redirect_to admin_stage_url(@admin_stage.id), notice: 'Stage was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @admin_stage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/stages/1
  # DELETE /admin/stages/1.json
  def destroy
    @admin_stage.destroy
    respond_to do |format|
      format.html { redirect_to admin_stages_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_stage
      @admin_stage = Clapme::Stage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_stage_params
      params.require(:stage).permit(:name, :slug, :description, :has_partner, :image_background, :image_background_remote_url)
    end
end
