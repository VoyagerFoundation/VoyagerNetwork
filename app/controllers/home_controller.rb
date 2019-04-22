class HomeController < ApplicationController
  def projects
    @projects = Project.where(status: [:published])
  end

  def index
    projects
    @featured_project = Project.get_random_project
  end
end
