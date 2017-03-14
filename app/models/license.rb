class License < ApplicationRecord
  # validates :price, presence: true
  belongs_to :user
  belongs_to :product
end
