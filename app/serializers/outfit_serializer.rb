class OutfitSerializer
  include JSONAPI::Serializer
  attributes :image, :description, :rating_agg, :shopping_links, :likes

  has_many :shopping_links, :likes,
  has_one :image, :description, :rating_agg
end
