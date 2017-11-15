class Post < ApplicationRecord
	
	validates :image, presence: true
	has_attached_file :image, styles: { :medium => "640px" }
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

	belongs_to :model
	validates :model_id, presence: true
end
