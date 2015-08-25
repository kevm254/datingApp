class ApplicationController < ActionController::Base
  #Rescue from general exception
  rescue_from Exception, :with => :serious_problem
  def serious_problem(e)
    redirect_to error_serious_path, :flash => { :error => "Serious error " + e.message }
  end
  protect_from_forgery with: :exception
end
