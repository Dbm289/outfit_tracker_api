class UserSerializer
  include JSONAPI::Serializer
  attributes :name, :email, :password

  has_many :outfits
end
