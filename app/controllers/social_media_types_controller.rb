class SocialMediaTypesController < ApplicationController
  before_action :set_social_media_type, only: %i[ show edit update destroy ]

  # GET /social_media_types or /social_media_types.json
  def index
    @social_media_types = SocialMediaType.all
  end

  # GET /social_media_types/1 or /social_media_types/1.json
  def show
  end

  # GET /social_media_types/new
  def new
    @social_media_type = SocialMediaType.new
  end

  # GET /social_media_types/1/edit
  def edit
  end

  # POST /social_media_types or /social_media_types.json
  def create
    @social_media_type = SocialMediaType.new(social_media_type_params)

    respond_to do |format|
      if @social_media_type.save
        format.html { redirect_to social_media_type_url(@social_media_type), notice: "Social media type was successfully created." }
        format.json { render :show, status: :created, location: @social_media_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @social_media_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /social_media_types/1 or /social_media_types/1.json
  def update
    respond_to do |format|
      if @social_media_type.update(social_media_type_params)
        format.html { redirect_to social_media_type_url(@social_media_type), notice: "Social media type was successfully updated." }
        format.json { render :show, status: :ok, location: @social_media_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @social_media_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /social_media_types/1 or /social_media_types/1.json
  def destroy
    @social_media_type.destroy

    respond_to do |format|
      format.html { redirect_to social_media_types_url, notice: "Social media type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_social_media_type
      @social_media_type = SocialMediaType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def social_media_type_params
      params.require(:social_media_type).permit(:name, :description)
    end
end
