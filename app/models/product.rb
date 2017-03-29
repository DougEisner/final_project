class Product < ApplicationRecord
  has_many :licenses
  has_many :CTD_downloads

  has_attached_file :image, styles: { medium: "250x250" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  def self.search(search_input)
    if search_input.length > 1
      search_results = []
      search_terms = search_input.strip.split(" ")
      search_terms.each do |search|
        search_results << where("title ILIKE ? OR summary ILIKE ? OR detailed_description ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
      end
      if search_results.count == 1
        search_results[0]
      else
        search_results[1]
      end
    else
      Product.all
    end
  end

  # has_attached_file :image,
  #                  styles: { medium: "640x" },
  #                  storage: :s3,
  #                  s3_credentials: Product.new{ |a| a.instance.s3_credentials },
  #                  s3_region: 'us-east-1'
  # validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

 #  def s3_credentials
 #   {
 #     bucket: ENV['S3_PRODUCTS_BUCKET'],
 #     access_key_id: ENV['S3_ACCESS_KEY_ID'],
 #     secret_access_key: ENV['S3_SECRET_ACCESS_KEY']
 #   }
 # end
end
