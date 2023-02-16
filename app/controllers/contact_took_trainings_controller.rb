class ContactTookTrainingsController < ApplicationController
  before_action :set_contact_took_training, only: %i[ show edit update destroy ]

  # GET /contact_took_trainings or /contact_took_trainings.json
  def index
    @contact_took_trainings = ContactTookTraining.all
  end

  # GET /contact_took_trainings/1 or /contact_took_trainings/1.json
  def show
  end

  # GET /contact_took_trainings/new
  def new
    @contact_took_training = ContactTookTraining.new
  end

  # GET /contact_took_trainings/1/edit
  def edit
  end

  # POST /contact_took_trainings or /contact_took_trainings.json
  def create
    @contact_took_training = ContactTookTraining.new(contact_took_training_params)

    respond_to do |format|
      if @contact_took_training.save
        format.html { redirect_to contact_took_training_url(@contact_took_training), notice: "Contact took training was successfully created." }
        format.json { render :show, status: :created, location: @contact_took_training }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @contact_took_training.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contact_took_trainings/1 or /contact_took_trainings/1.json
  def update
    respond_to do |format|
      if @contact_took_training.update(contact_took_training_params)
        format.html { redirect_to contact_took_training_url(@contact_took_training), notice: "Contact took training was successfully updated." }
        format.json { render :show, status: :ok, location: @contact_took_training }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @contact_took_training.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contact_took_trainings/1 or /contact_took_trainings/1.json
  def destroy
    @contact_took_training.destroy

    respond_to do |format|
      format.html { redirect_to contact_took_trainings_url, notice: "Contact took training was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact_took_training
      @contact_took_training = ContactTookTraining.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contact_took_training_params
      params.require(:contact_took_training).permit(:trained_on, :contact_id, :training_id)
    end
end
