class Comment < ApplicationRecord
  belongs_to :resume
  belongs_to :poster, class_name: "User"

  validates :resume_id, presence: true
  validates :poster_id, presence: true
  validates :content, presence: true
  validates :content, length: { maximum: 250 }
end
