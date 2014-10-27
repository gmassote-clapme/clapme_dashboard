class Admin::ShowsController < ApplicationController
  before_action :set_admin_show, only: [:show, :edit, :update, :destroy]

  # GET /admin/shows
  # GET /admin/shows.json
  def index
    @admin_shows = Clapme::Show.all
  end

  # GET /admin/shows/1
  # GET /admin/shows/1.json
  def show
  end

  # GET /admin/shows/new
  def new
    @admin_show = Clapme::Show.new
  end

  # GET /admin/shows/1/edit
  def edit
  end

  # POST /admin/shows
  # POST /admin/shows.json
  def create
    @admin_show = Clapme::Show.new(admin_show_params)

    respond_to do |format|
      if @admin_show.save
        format.html { redirect_to admin_show_path(@admin_show.id), notice: 'Show was successfully created.' }
        format.json { render action: 'show', status: :created, location: @admin_show }
      else
        format.html { render action: 'new' }
        format.json { render json: @admin_show.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/shows/1
  # PATCH/PUT /admin/shows/1.json
  def update
    respond_to do |format|
      if @admin_show.update(admin_show_params)
        format.html { redirect_to admin_show_path(@admin_show.id), notice: 'Show was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @admin_show.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/shows/1
  # DELETE /admin/shows/1.json
  def destroy
    @admin_show.destroy
    respond_to do |format|
      format.html { redirect_to admin_shows_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_show
      @admin_show = Clapme::Show.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_show_params
      params.require(:show).permit(:name, :slug, :scheduled_start_at, :scheduled_finish_at, :duration_mm, :description, :payment_amount, :video_teaser, :url_stream, :url_stream_vip, :state, :photo_profile, :photo_cover)
    end
end
