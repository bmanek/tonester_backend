class Song < ApplicationRecord
  has_many :playlist_songs
  has_many :playlists, through: :playlist_songs

  
  # def add_to_playlist(playlist)
  #   playlist.add_song(self)
  # end


end
