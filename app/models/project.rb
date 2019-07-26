class Project < ApplicationRecord
  has_many :activities
  has_many :user_projects
  has_many :users, through: :user_projects
  mount_uploader :logo, LogoUploader
  enum status: { created: 0, completed: 1}
  accepts_nested_attributes_for :users, :allow_destroy => true

  def total_hours
	 self.activities.sum(:hours).to_f
  end
end
