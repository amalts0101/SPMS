class Activity < ApplicationRecord
  belongs_to :project
  belongs_to :user
  validates :hours, presence: true
  scope :recent, -> { order(id: :desc).last(10) }
  scope :this_month, -> { where(date: Time.now.beginning_of_month..Time.now.end_of_month) }

  def project_name
    self.project.name
  end
end

