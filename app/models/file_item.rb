class FileItem < ApplicationRecord
  belongs_to :directory
  has_one_attached :content

  validates :content, presence: true
end
