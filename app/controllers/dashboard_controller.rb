class DashboardController < ApplicationController
  def index
  	@activities = current_user.activities.recent
  end
end
