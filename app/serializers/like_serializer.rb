class LikeSerializer
  include JSONAPI::Serializer
  attributes :count, :outfit_id
end
