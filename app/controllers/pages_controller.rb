class PagesController < ApplicationController
  allow_unauthenticated_access only: %i[ about faq guide home index privacy show terms ]
  before_action :resume_session

  def about
  end

  def faq
  end

  def guide
  end

  def index
  end

  def privacy
  end

  def show
  end

  def terms
  end

end
