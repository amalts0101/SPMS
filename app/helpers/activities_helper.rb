module ActivitiesHelper
  def projects
    current_user.projects
  end

  def default_project
    projects.last
  end
end
