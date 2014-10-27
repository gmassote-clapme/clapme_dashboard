class Cms::HomeBannersController < FormHelperController
  before_action :set_cms_home_banner, only: [:show, :edit, :update, :destroy]
  before_action(only: [:create, :update]) do |c|
    c.build_date_time(:cms_home_banner, :visible_start_at, :visible_start_date_at, :visible_start_time_at)
    c.build_date_time(:cms_home_banner, :visible_finish_at, :visible_finish_date_at, :visible_finish_time_at)
  end

  # GET /cms/home_banners
  # GET /cms/home_banners.json
  def index
    @cms_home_banners = Cms::HomeBanner.all
  end

  # GET /cms/home_banners/1
  # GET /cms/home_banners/1.json
  def show
  end

  # GET /cms/home_banners/new
  def new
    @cms_home_banner = Cms::HomeBanner.new
  end

  # GET /cms/home_banners/1/edit
  def edit
  end

  # POST /cms/home_banners
  # POST /cms/home_banners.json
  def create
    @cms_home_banner = Cms::HomeBanner.new(cms_home_banner_params)

    respond_to do |format|
      if @cms_home_banner.save
        format.html { redirect_to @cms_home_banner, notice: 'Home banner was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cms_home_banner }
      else
        format.html { render action: 'new' }
        format.json { render json: @cms_home_banner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cms/home_banners/1
  # PATCH/PUT /cms/home_banners/1.json
  def update
    respond_to do |format|
      if @cms_home_banner.update(cms_home_banner_params)
        format.html { redirect_to @cms_home_banner, notice: 'Home banner was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cms_home_banner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cms/home_banners/1
  # DELETE /cms/home_banners/1.json
  def destroy
    @cms_home_banner.destroy
    respond_to do |format|
      format.html { redirect_to cms_home_banners_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cms_home_banner
      @cms_home_banner = Cms::HomeBanner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cms_home_banner_params
      params.require(:cms_home_banner).permit(:name, :redirect_url, :visible_start_at, :visible_finish_at, :is_visible, :image, :image_remote_url)
    end
end
