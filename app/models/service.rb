class Service < ActiveRecord::Base
	belongs_to :category
	has_many :menus

	validates :description, :title, :slogan,  presence: true

	has_attached_file :picture, styles: { large: "800x600#", medium: "400x250#", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/
  
end
