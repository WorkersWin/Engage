class ReportsController < ApplicationController
  # before_action :set_target_date, only: %i[ assessment_levels_to_date ]

  def current_assessment_levels
   @assessments = Assessment.current_assessments;
   @total = @assessments.sum(&:last)
  end

  def assessment_levels_to_date
   target_date = report_params
   puts "reports controller"
   puts "report params = "
   puts report_params
   puts "target date = "
   puts @target_date
   puts " END"
   @assessments = Assessment.assessment_levels_to_date(params[:target_date]);
   @total = @assessments.sum(&:last)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_target_date
      @target_date = (params[:id])
    end

    # Only allow a list of trusted parameters through.
    def report_params
      params.permit(:target_date)
    end
end
