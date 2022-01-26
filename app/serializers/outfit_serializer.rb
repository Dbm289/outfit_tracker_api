class OutfitSerializer
  include JSONAPI::Serializer
  attributes :image, :description, :rating_agg, :shopping_links, :user_id

  has_many :likes, :links, :ratings, :comments
end
