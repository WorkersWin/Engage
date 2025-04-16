class PagesController < ApplicationController
  allow_unauthenticated_access only: %i[ about changelog faq guide home index license privacy show terms ]
  before_action :resume_session

  def about
  end

  def changelog
  end

  def faq
  end

  def guide
  end

  def index
  end

  def license
  end

  def privacy
  end

  def show
  end

  def terms
  end

end
