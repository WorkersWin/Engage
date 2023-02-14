class JobTitlesController < ApplicationController
  before_action :set_job_title, only: %i[ show edit update destroy ]

  # GET /job_titles or /job_titles.json
  def index
    @job_titles = JobTitle.all
  end

  # GET /job_titles/1 or /job_titles/1.json
  def show
  end

  # GET /job_titles/new
  def new
    @job_title = JobTitle.new
  end

  # GET /job_titles/1/edit
  def edit
  end

  # POST /job_titles or /job_titles.json
  def create
    @job_title = JobTitle.new(job_title_params)

    respond_to do |format|
      if @job_title.save
        format.html { redirect_to job_title_url(@job_title), notice: "Job title was successfully created." }
        format.json { render :show, status: :created, location: @job_title }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @job_title.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /job_titles/1 or /job_titles/1.json
  def update
    respond_to do |format|
      if @job_title.update(job_title_params)
        format.html { redirect_to job_title_url(@job_title), notice: "Job title was successfully updated." }
        format.json { render :show, status: :ok, location: @job_title }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @job_title.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_titles/1 or /job_titles/1.json
  def destroy
    @job_title.destroy

    respond_to do |format|
      format.html { redirect_to job_titles_url, notice: "Job title was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_title
      @job_title = JobTitle.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def job_title_params
      params.require(:job_title).permit(:title, :description)
    end
end
