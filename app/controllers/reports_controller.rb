class ReportsController < ApplicationController
  def assessments_by_level
   @assessments = Assessment.group(:assessment_level_id).count
   @total = Assessment.count
  end
end
