module User::ActivityManager
  extend ActiveSupport::Concern

  def create_activity(params)
  	activity = self.activities.new(params)
  	activity.date = Date.strptime(params[:date], "%B %d, %Y")
  	activity.project_id = params[:project_id].map(&:presence).compact.first
    activity.save
    activity
  end
end