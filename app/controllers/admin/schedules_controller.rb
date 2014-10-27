class Admin::SchedulesController < ApplicationController
  before_action :set_admin_schedule, only: [:show, :edit, :update, :destroy]

  # GET /admin/schedules
  # GET /admin/schedules.json
  def index
    @admin_schedules = Clapme::Schedule.all
  end

  # GET /admin/schedules/1
  # GET /admin/schedules/1.json
  def show
  end

  # GET /admin/schedules/new
  def new
    @admin_schedule = Clapme::Schedule.new
  end

  # GET /admin/schedules/1/edit
  def edit
  end

  # POST /admin/schedules
  # POST /admin/schedules.json
  def create
    @admin_schedule = Clapme::Schedule.new(admin_schedule_params)

    respond_to do |format|
      if @admin_schedule.save
        format.html { redirect_to admin_schedule_url(@admin_schedule.id), notice: 'Schedule was successfully created.' }
        format.json { render action: 'show', status: :created, location: @admin_schedule }
      else
        format.html { render action: 'new' }
        format.json { render json: @admin_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/schedules/1
  # PATCH/PUT /admin/schedules/1.json
  def update
    respond_to do |format|
      if @admin_schedule.update(admin_schedule_params)
        format.html { redirect_to admin_schedule_url(@admin_schedule.id), notice: 'Schedule was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @admin_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/schedules/1
  # DELETE /admin/schedules/1.json
  def destroy
    @admin_schedule.destroy
    respond_to do |format|
      format.html { redirect_to admin_schedules_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_schedule
      @admin_schedule = Clapme::Schedule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_schedule_params
      params.require(:schedule).permit(:name, :concurrent_events_enable, :clapme_stages_id)
    end
end
