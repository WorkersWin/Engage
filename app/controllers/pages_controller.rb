class PagesController < ApplicationController
  allow_unauthenticated_access only: %i[ about faq index privacy roadmap show terms ]
  before_action :resume_session

  def about
  end

  def faq
  end

  def index
  end

  def privacy
  end

  def roadmap
  end

  def show
  end

  def terms
  end

end
