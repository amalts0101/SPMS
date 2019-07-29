class ProjectsController < ApplicationController
  before_action :authenticate_user!

  def index
    @user_projects = current_user.user_projects.includes(:project)
    @user = current_user
    if @user.projects.blank?
      flash[:info] = 'No Projects Assigned'
    else
      flash[:success] = 'Successfully loaded all projects'
    end
  end
end
