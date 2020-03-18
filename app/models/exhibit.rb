class Exhibit < ApplicationRecord
  has_many :tag_exhibits
  has_many :tags, through: :tag_exhibits
  belongs_to :user


  def self.search(search)
    return Exhibit.all unless search
    Exhibit.where('name LIKE(?)', "%#{search}%")
  end

  mount_uploader :image, ImageUploader

end
