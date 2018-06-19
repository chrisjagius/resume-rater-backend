class CommentSerializer < ActiveModel::Serializer
  attributes :id, :poster_id, :content
end
