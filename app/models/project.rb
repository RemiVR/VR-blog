class Project < ActiveRecord::Base
	validates :title, presence: true
	validates :link, presence: true
	validates :description, presence: true
end
