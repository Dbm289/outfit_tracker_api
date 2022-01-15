class OutfitSerializer
  include JSONAPI::Serializer
  attributes :image, :description, :rating_agg, :shopping_links, :likes
end
