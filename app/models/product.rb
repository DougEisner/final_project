class Product < ApplicationRecord
  has_many :licenses
  has_many :CTD_downloads
end
