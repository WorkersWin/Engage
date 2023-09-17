class ReportsController < ApplicationController
  def current_assessments
   @assessments = Assessment.current_assessments;
   @total = @assessments.sum(&:last)
  end
end
