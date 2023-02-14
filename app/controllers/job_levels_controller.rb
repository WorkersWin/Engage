class JobLevelsController < ApplicationController
  before_action :set_job_level, only: %i[ show edit update destroy ]

  # GET /job_levels or /job_levels.json
  def index
    @job_levels = JobLevel.all
  end

  # GET /job_levels/1 or /job_levels/1.json
  def show
  end

  # GET /job_levels/new
  def new
    @job_level = JobLevel.new
  end

  # GET /job_levels/1/edit
  def edit
  end

  # POST /job_levels or /job_levels.json
  def create
    @job_level = JobLevel.new(job_level_params)

    respond_to do |format|
      if @job_level.save
        format.html { redirect_to job_level_url(@job_level), notice: "Job level was successfully created." }
        format.json { render :show, status: :created, location: @job_level }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @job_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /job_levels/1 or /job_levels/1.json
  def update
    respond_to do |format|
      if @job_level.update(job_level_params)
        format.html { redirect_to job_level_url(@job_level), notice: "Job level was successfully updated." }
        format.json { render :show, status: :ok, location: @job_level }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @job_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_levels/1 or /job_levels/1.json
  def destroy
    @job_level.destroy

    respond_to do |format|
      format.html { redirect_to job_levels_url, notice: "Job level was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_level
      @job_level = JobLevel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def job_level_params
      params.require(:job_level).permit(:level, :description)
    end
end
