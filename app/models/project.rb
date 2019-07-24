class Project < ApplicationRecord
  has_many :activities
  has_many :users, through: :user_projects
  mount_uploader :logo, LogoUploader
  enum status: { created: 0, completed: 1}
  def total_hours
	self.activities.sum(:hours).to_f
  end
end
