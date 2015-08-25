class ApplicationController < ActionController::Base
  #Rescue from general exception
  rescue_from Exception, :with => :serious_problem
  def serious_problem(e)
    redirect_to error_serious_path, :flash => { :error => "Serious error " + e.message }
  end
  protect_from_forgery with: :exception

  #before_action :authenticate_user!
  before_action :set_member

  private
  def set_member
    if @member == nil
      @member = current_user.member
    end
  end
end
