class Tag < ApplicationRecord
  has_many :tag_exhibits
  has_many :exhibits, through: :tag_exhibits
end
