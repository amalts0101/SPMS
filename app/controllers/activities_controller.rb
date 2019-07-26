class ActivitiesController < ApplicationController
  before_action :authenticate_user!
  def index
    @activities = current_user.activities
  end

  def create
    @activity = current_user.create_activity(activity_params)
    redirect_to root_path
  end
 
private
  def activity_params
    params.require(:activity).permit(:name, :hours, :date, project_id: [])
  end
end
