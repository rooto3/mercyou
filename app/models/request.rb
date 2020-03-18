class Request < ApplicationRecord
  belongs_to :user, optional: true
  has_many :likes, dependent: :destroy

  mount_uploader :image, ImageUploader
end
