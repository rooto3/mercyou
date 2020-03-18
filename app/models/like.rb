class Like < ApplicationRecord
  belongs_to :user
  belongs_to :request
  validates :user_id, presence: true
  validates :request_id, presence: true

  def iine(user)
    likes.create(user_id: user.id)
  end

  def uniine(user)
    likes.find_by(user_id: user.id).destroy
  end
end
