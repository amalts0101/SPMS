class Activity < ApplicationRecord
  belongs_to :project
  belongs_to :user
  validates :hours, presence: true
  scope :recent, -> { order(id: :desc).last(10) }
  scope :this_month, -> { where(date: Time.now.beginning_of_month..Time.now.end_of_month) }

  def project_name
    self.project.name
  end

  def update_activity(params)
    self.name = params[:name]
    self.hours = params[:hours]
    self.date = Date.strptime(params[:date], "%B %d, %Y")
    self.project_id = params[:project_id].map(&:presence).compact.first
    self.save
    self
  end
end

