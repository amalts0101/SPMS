class ProjectsController < ApplicationController
  before_action :authenticate_user!

  def index
    @projects = Project.all
    flash[:success] = 'Successfully loaded all projects'
  end
end
