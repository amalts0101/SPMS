class User < ApplicationRecord
  include User::ActivityManager

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :user_projects
  has_many :projects, through: :user_projects
  has_many :activities
  accepts_nested_attributes_for :projects, :allow_destroy => true

  def total_activity_hours
    self.activities.sum(:hours).to_f
  end

  def total_month_hours
   activities.this_month.sum(:hours).to_f
  end
end
