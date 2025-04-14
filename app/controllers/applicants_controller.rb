class ApplicantsController < ApplicationController
  before_action :set_applicant, only: %i[show edit update destroy]
  allow_unauthenticated_access only: %i[create new thanks]
  http_basic_authenticate_with name: "worker", password: "solidarity", except: [:edit, :index, :show, :update]


  # GET /applicants or /applicants.json
  def index
    @applicants = Applicant.all
  end

  # GET /applicants/1 or /applicants/1.json
  def show
  end

  # GET /applicants/new
  def new
    @applicant = Applicant.new
  end

  # GET /applicants/1/edit
  def edit
  end

  # POST /applicants or /applicants.json
  def create
    @applicant = Applicant.new(applicant_params)

    respond_to do |format|
      if @applicant.save
        format.html { redirect_to applicants_thanks_path, notice: "Thank You" }
        # format.json { render :show, status: :created, location: @applicant }
      else
        format.html { render :new, status: :unprocessable_entity }
        # format.json { render json: @applicant.errors, status: :unprocessable_entity }
      end
    end
  end

  def thanks
  end

  # PATCH/PUT /applicants/1 or /applicants/1.json
  def update
    respond_to do |format|
      if @applicant.update(applicant_params)
        format.html { redirect_to @applicant, notice: "Applicant was successfully updated." }
        format.json { render :show, status: :ok, location: @applicant }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @applicant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /applicants/1 or /applicants/1.json
  def destroy
    @applicant.destroy!

    respond_to do |format|
      format.html { redirect_to applicants_path, status: :see_other, notice: "Applicant was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_applicant
      @applicant = Applicant.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def applicant_params
      params.expect(applicant: [ :first_name, :last_name, :personal_email_address, :personal_cell_phone, :preferred_language, :pronouns, :work_username, :job_title, :job_level, :work_location_code, :note ])
    end
end
