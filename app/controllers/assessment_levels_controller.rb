class AssessmentLevelsController < ApplicationController
  before_action :set_assessment_level, only: %i[ show edit update destroy ]

  # GET /assessment_levels or /assessment_levels.json
  def index
    @assessment_levels = AssessmentLevel.all
  end

  # GET /assessment_levels/1 or /assessment_levels/1.json
  def show
  end

  # GET /assessment_levels/new
  def new
    @assessment_level = AssessmentLevel.new
  end

  # GET /assessment_levels/1/edit
  def edit
  end

  # POST /assessment_levels or /assessment_levels.json
  def create
    @assessment_level = AssessmentLevel.new(assessment_level_params)

    respond_to do |format|
      if @assessment_level.save
        format.html { redirect_to assessment_level_url(@assessment_level), notice: "Assessment level was successfully created." }
        format.json { render :show, status: :created, location: @assessment_level }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @assessment_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assessment_levels/1 or /assessment_levels/1.json
  def update
    respond_to do |format|
      if @assessment_level.update(assessment_level_params)
        format.html { redirect_to assessment_level_url(@assessment_level), notice: "Assessment level was successfully updated." }
        format.json { render :show, status: :ok, location: @assessment_level }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @assessment_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assessment_levels/1 or /assessment_levels/1.json
  def destroy
    @assessment_level.destroy

    respond_to do |format|
      format.html { redirect_to assessment_levels_url, notice: "Assessment level was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assessment_level
      @assessment_level = AssessmentLevel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def assessment_level_params
      params.require(:assessment_level).permit(:level, :description)
    end
end
