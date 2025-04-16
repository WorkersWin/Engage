class EmploymentTypesController < ApplicationController
  before_action :set_employment_type, only: %i[ show edit update destroy ]

  # GET /employment_types or /employment_types.json
  def index
    @employment_types = EmploymentType.all
  end

  # GET /employment_types/1 or /employment_types/1.json
  def show
  end

  # GET /employment_types/new
  def new
    @employment_type = EmploymentType.new
  end

  # GET /employment_types/1/edit
  def edit
  end

  # POST /employment_types or /employment_types.json
  def create
    @employment_type = EmploymentType.new(employment_type_params)

    respond_to do |format|
      if @employment_type.save
        format.html { redirect_to @employment_type, notice: "Employment type was successfully created." }
        format.json { render :show, status: :created, location: @employment_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @employment_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employment_types/1 or /employment_types/1.json
  def update
    respond_to do |format|
      if @employment_type.update(employment_type_params)
        format.html { redirect_to @employment_type, notice: "Employment type was successfully updated." }
        format.json { render :show, status: :ok, location: @employment_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @employment_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employment_types/1 or /employment_types/1.json
  def destroy
    @employment_type.destroy!

    respond_to do |format|
      format.html { redirect_to employment_types_path, status: :see_other, notice: "Employment type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employment_type
      @employment_type = EmploymentType.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def employment_type_params
      params.expect(employment_type: [ :name, :description ])
    end
end
