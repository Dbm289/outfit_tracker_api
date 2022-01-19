class OutfitSerializer < ActiveModel::Serializer
  attributes :id, :image, :description, :rating_agg, :shopping_links
  belongs_to :user

end