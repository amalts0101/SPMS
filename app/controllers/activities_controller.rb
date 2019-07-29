class ActivitiesController < ApplicationController
  before_action :authenticate_user!
  before_action :fetch_activity, only: [:edit, :destroy, :update]

  def index
    @activity_map = current_user.activities.order(date: :desc).group_by(&:date)
    @activity = Activity.new
  end

  def create
    @activity = current_user.create_activity(activity_params)
  end

  def edit
  end

  def new
    @activity = Activity.new
  end

  def destroy
    @activity.destroy
    redirect_to activities_path
    flash[:success] = 'Deleted successfully'
  end

  def update
    @activity.update_activity(activity_params)
  end

  private

  def fetch_activity
    @activity = Activity.find(params[:id])
  end

  def activity_params
    params.require(:activity).permit(:name, :hours, :date, project_id: [])
  end
end
