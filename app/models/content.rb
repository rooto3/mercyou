class Content < ApplicationRecord


  def self.search(search)
    return Content.all unless search
    Content.where('text LIKE(?)', "%#{search}%")
  end

  mount_uploader :image, ImageUploader
end
