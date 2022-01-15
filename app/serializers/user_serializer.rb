class UserSerializer
  include JSONAPI::Serializer
  attributes :name, :email, :password_digest

  has_many :outfits
end
