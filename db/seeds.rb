require_relative '../inventory.rb'
# require_relative "../app"

# require 'json'
require 'rspotify'
# require 'pry'


PlaylistSong.destroy_all
Playlist.destroy_all
Song.destroy_all

def get_playlist_list(search_term)
  RSpotify.authenticate(CLIENT_KEY, SECRET_KEY)
  RSpotify::Playlist.search(search_term, limit: 5)
end

def seed_db(playlist_list, genre)

  # db_playlist = Playlist.create(title: "#{genre.capitalize} Playlist", user_id: ????? )

  playlist_list.each do |playlist|
    playlist.tracks.each do |track|
      # binding.pry
      name = track.name
      artist = track.artists.first.name
      album = track.album.name
      album_cover = track.album.images[1]["url"]
      # genre = track.genre

      song = Song.find_or_create_by(
        title: name,
        artist: artist,
        album: album,
        album_cover: album_cover
        # genre: genre
      )
      # from the reference file. duplicate or ignore
      # song.add_to_playlist(db_playlist)
    end
  end
end

indie = get_playlist_list("indie")
seed_db(indie, "indie")


# OLD DATA

user1 = User.find_or_create_by(bio: "Just a cool dude who digs groovy tunes", photo: "https://petharbor.com/get_image.asp?RES=Detail&ID=A603427&LOCATION=AZHS1", username: "GroovyGus")

user2 = User.find_or_create_by(bio: "Just a cool lady who digs groovy tunes", photo: "https://petharbor.com/get_image.asp?RES=Detail&ID=A603427&LOCATION=AZHS1", username: "ChillJustine")

user3 = User.find_or_create_by(bio: "Just a drifter who digs groovy tunes", photo: "https://petharbor.com/get_image.asp?RES=Detail&ID=A603427&LOCATION=AZHS1", username: "GroovyGust")

playlist1 = Playlist.find_or_create_by(title: "Riding the Wave", user_id: 1)
playlist2 = Playlist.find_or_create_by(title: "Wayfarer", user_id: 2)
playlist3 = Playlist.find_or_create_by(title: "Summer Chill Playlist", user_id: 3)
playlist4 = Playlist.find_or_create_by(title: "Superchill Playlist", user_id: 1)

playlist_song1 = PlaylistSong.find_or_create_by(playlist_id: 1, song_id: 1)
playlist_song2 = PlaylistSong.find_or_create_by(playlist_id: 1, song_id: 2)
playlist_song3 = PlaylistSong.find_or_create_by(playlist_id: 1, song_id: 3)
playlist_song4 = PlaylistSong.find_or_create_by(playlist_id: 1, song_id: 4)
playlist_song5 = PlaylistSong.find_or_create_by(playlist_id: 2, song_id: 1)
playlist_song6 = PlaylistSong.find_or_create_by(playlist_id: 3, song_id: 1)
playlist_song7 = PlaylistSong.find_or_create_by(playlist_id: 4, song_id: 1)
playlist_song8 = PlaylistSong.find_or_create_by(playlist_id: 3, song_id: 5)