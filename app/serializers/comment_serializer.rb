class CommentSerializer
  include JSONAPI::Serializer
  attributes :text, :outfit_id
end
