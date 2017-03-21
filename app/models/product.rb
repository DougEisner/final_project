class Product < ApplicationRecord
  has_many :licenses
  has_many :CTD_downloads

  has_attached_file :image, styles: { medium: "100x100" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
