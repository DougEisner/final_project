class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :lockable, :zxcvbnable

  ENTITY = [['Select Entity Size', 0], ['< 50', 1], ['50 > 250', 2], ['> 250', 3]]

  RESEARCHAREA = [['Select Reseach Area', 'Select Reseach Area'], 
  ['Biology', 'Biology'], ['Chemistry', 'Chemistry'],
  ['Fishery', 'Fishery'], ['Animal Genetics', 'Animal Genetics']]

  def send_devise_notification(notification, *args)
   devise_mailer.send(notification, self, *args).deliver_later
  end

  has_many :licenses
end
