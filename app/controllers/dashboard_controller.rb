class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @activities = current_user.activities.recent
    @user = current_user
  end
end
