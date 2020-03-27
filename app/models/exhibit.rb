class Exhibit < ApplicationRecord
  belongs_to :category
  belongs_to :user


  def self.search(search)
    return Exhibit.all unless search
    Exhibit.where('name LIKE(?)', "%#{search}%")
  end

  mount_uploader :image, ImageUploader

end
