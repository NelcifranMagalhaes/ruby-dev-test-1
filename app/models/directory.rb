class Directory < ApplicationRecord
	has_many :sub_directories,inverse_of: :directory
	accepts_nested_attributes_for :sub_directories, reject_if: :all_blank, allow_destroy: true
	has_one_attached :image_directory
end
