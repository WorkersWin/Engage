class RegistrationsController < ApplicationController
  before_action :resume_session, only: :new
  # allow_unauthenticated_access only: %i[ new create ]
  rate_limit to: 10, within: 3.minutes, only: :create, with: -> { redirect_to new_session_url, alert: "Try again later." }

  def new
    redirect_to root_url if authenticated?
  end

  def create
    user = User.new(params.permit(:email_address, :username, :password))
    if user.save
      start_new_session_for user
      redirect_to after_authentication_url, notice: "Successfully Signed Up"
    else
      # redirect_to root_path, alert: "Try another email address or password."
      print "ALERT ALERT ALERT ALERT ALERT ALERT ALERT ALERT = "
      puts alert
      # redirect_to root_path, alert: "Try another email address or password."
      redirect_to root_path, alert: "prohibited username"
    end
  end

  def destroy
    terminate_session
    redirect_to new_session_path, notice: "Successfully Signed Out"
  end
end
