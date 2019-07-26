class ProjectsController < ApplicationController
  before_action :authenticate_user!

  def index
    @user_projects = current_user.user_projects.includes(:project)
    @user = current_user
  end
end
