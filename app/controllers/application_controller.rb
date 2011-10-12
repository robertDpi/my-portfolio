class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_navigation

  private
  def set_navigation
    @project_list = Project.sorted
  end
end
