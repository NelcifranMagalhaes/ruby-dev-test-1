class SubDirectory < ApplicationRecord
  	belongs_to :directory
	has_one_attached :image_sub_directory
	validates :name,presence: true
	
end
