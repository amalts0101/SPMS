class Project < ApplicationRecord
	has_many :activities
	has_many :employees
end
