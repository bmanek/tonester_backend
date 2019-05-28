class UserSerializer < ActiveModel::Serializer
  attributes :id, :bio, :username, :photo
  has_many :playlists
  

end
