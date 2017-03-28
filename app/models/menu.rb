class Menu < ActiveRecord::Base
  belongs_to :service
	has_many :drinks
	has_many :foods

	validates :title, :description, presence: true

	accepts_nested_attributes_for :drinks, reject_if: :all_blank, allow_destroy: true
	accepts_nested_attributes_for :foods, reject_if: :all_blank, allow_destroy: true

end
