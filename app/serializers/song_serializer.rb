class SongSerializer < ActiveModel::Serializer
  attributes :id , :title, :genre , :artist, :album

end
