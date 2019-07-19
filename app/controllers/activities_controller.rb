class ActivitiesController < ApplicationController
  def index
  end

  def create
    @activity = current_user.activities.new(activity_params)
    @activity.project_id = 1
    @activity.save
    redirect_to root_path
  end

 
private
  def activity_params
    params.require(:activity).permit(:name, :hours, :project_id)
  end
end
