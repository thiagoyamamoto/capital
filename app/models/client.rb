class Client < ActiveRecord::Base

	validates :description, :name, :website, :picture,  presence: true

	has_attached_file :picture, styles: { large: "800x600#", medium: "200x150#", thumb: "150x150>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/
  
end
