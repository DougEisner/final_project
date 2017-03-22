class CtdDownload < ApplicationRecord
  belongs_to :user

  def self.search(search)
    if search
      find(:all, :conditions => ['download LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
end
