class Resume < ApplicationRecord
  belongs_to :user
  has_many :feedback, class_name: "Comment"

  validates :title, presence: true
  validates :image_url, presence: true
  validates :image_url, allow_blank: true, format: { with: %r{.(gif|jpg|png)\Z}i, message: 'must be a URL for GIF, JPG or PNG image.' }
  validates :industry, presence: true
  validates :user_id, presence: true
end
