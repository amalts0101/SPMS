class Project < ApplicationRecord
	has_many :activities
	has_many :users
end
