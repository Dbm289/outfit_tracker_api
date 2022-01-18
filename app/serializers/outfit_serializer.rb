class OutfitSerializer
  include JSONAPI::Serializer
  attributes :id, :image, :description, :rating_agg, :shopping_links, :likes

  has_many :shopping_links, :likes
end 
  has_one :image, :description, :rating_agg
end
