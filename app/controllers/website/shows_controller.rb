class Website::ShowsController < ApplicationController
  before_action :set_clapme_show, only: [:show, :edit, :update, :destroy]

  # GET /website/shows
  # GET /website/shows.json
  def index
    @clapme_shows = Clapme::Show.all.order(scheduled_start_at: :desc)
  end

  # GET /website/shows/1
  # GET /website/shows/1.json
  def show
  end

  # GET /website/shows/new
  def new
    @clapme_show = Clapme::Show.new
  end

  # GET /website/shows/1/edit
  def edit
  end

  # POST /website/shows
  # POST /website/shows.json
  def create
    @clapme_show = Clapme::Show.new(clapme_show_params)

    respond_to do |format|
      if @clapme_show.save
        format.html { redirect_to website_show_url(@clapme_show.id), notice: 'Show was successfully created.' }
        format.json { render action: 'show', status: :created, location: @clapme_show }
      else
        format.html { render action: 'new' }
        format.json { render json: @clapme_show.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /website/shows/1
  # PATCH/PUT /website/shows/1.json
  def update
    respond_to do |format|
      if @clapme_show.update(clapme_show_params)
        format.html { redirect_to website_show_url(@clapme_show.id), notice: 'Show was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @clapme_show.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /website/shows/1
  # DELETE /website/shows/1.json
  def destroy
    @clapme_show.destroy
    respond_to do |format|
      format.html { redirect_to website_shows_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clapme_show
      @clapme_show = Clapme::Show.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clapme_show_params
      params.require(:show).permit(:name, :scheduled_start_at, :scheduled_finish_at, :started_at, :finished_at, :duration_mm, :description, :payment_type, :payment_amount, :top_rewards, :video_teaser, :slug, :state, :image_background, :color_background)
    end
end
