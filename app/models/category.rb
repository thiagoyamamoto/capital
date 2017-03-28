class Category < ActiveRecord::Base
	has_many :service
	validates :description, presence: true
end
