class DashboardsController < ApplicationController
  def index
   @assessments = Assessment.current_assessments;
  end
end
