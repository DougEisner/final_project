class CtdDownload < ApplicationRecord
  belongs_to :user

  def self.search(search)
    if search
      where('download ILIKE ?', "%#{search}%")
    else
      CtdDownload.all
    end
  end
end
