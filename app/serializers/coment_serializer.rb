class ComentSerializer
  include JSONAPI::Serializer
  attributes :text, :outfit_id
end
