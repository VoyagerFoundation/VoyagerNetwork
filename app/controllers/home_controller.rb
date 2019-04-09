class HomeController < ApplicationController
  def projects
    @projects = Project.where(status: [:published])
  end

  def index
    projects
  end
end
