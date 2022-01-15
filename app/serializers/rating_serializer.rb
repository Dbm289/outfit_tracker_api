class RatingSerializer
  include JSONAPI::Serializer
  attributes :rating, :outfit_id
end
