class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments , :dependent => :destroy
  mount_uploader :image, ImageUploader
   self.per_page = 3
  def self.search(search)
  if search
     where('title LIKE ?', "%#{search}%")
  else
    all
  end
end
end
