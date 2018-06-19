class ResumeSerializer < ActiveModel::Serializer
  attributes :id, ,:title, :image_url, :industry, :user_id
end
