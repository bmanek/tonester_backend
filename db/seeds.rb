# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.find_or_create_by([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.find_or_create_by(bio: "Just a cool dude who digs groovy tunes", photo: "https://petharbor.com/get_image.asp?RES=Detail&ID=A603427&LOCATION=AZHS1", username: "GroovyGus")

user2 = User.find_or_create_by(bio: "Just a cool lady who digs groovy tunes", photo: "https://petharbor.com/get_image.asp?RES=Detail&ID=A603427&LOCATION=AZHS1", username: "ChillJustine")

user3 = User.find_or_create_by(bio: "Just a drifter who digs groovy tunes", photo: "https://petharbor.com/get_image.asp?RES=Detail&ID=A603427&LOCATION=AZHS1", username: "GroovyGust")

playlist1 = Playlist.find_or_create_by(title: "Riding the Wave", user_id: 1)
playlist2 = Playlist.find_or_create_by(title: "Wayfarer", user_id: 2)
playlist3 = Playlist.find_or_create_by(title: "Summer Chill Playlist", user_id: 3)
playlist4 = Playlist.find_or_create_by(title: "Superchill Playlist", user_id: 1)

song1 = Song.find_or_create_by(title: "Wheel in the Sky", artist: "Foreigner", album: "Greatest Hits", genre: "Rock")
song2 = Song.find_or_create_by(title: "Fake Plastic Trees", artist: "Radiohead", album: "The Bends", genre: "Alternative")
song3 = Song.find_or_create_by(title: "Master of Puppets", artist: "Metallica", album: "Ride the Lightning", genre: "Metal")
song4 = Song.find_or_create_by(title: "Happier", artist: "Marshmallow", album: "Greatest Hits", genre: "EDM")
song5 = Song.find_or_create_by(title: "Sandstorm", artist: "Durude", album: "Greatest Hits", genre: "Techno")

playlist_song1 = PlaylistSong.find_or_create_by(playlist_id: 1, song_id: 1)
playlist_song1 = PlaylistSong.find_or_create_by(playlist_id: 1, song_id: 2)
playlist_song1 = PlaylistSong.find_or_create_by(playlist_id: 1, song_id: 3)
playlist_song1 = PlaylistSong.find_or_create_by(playlist_id: 1, song_id: 4)
playlist_song1 = PlaylistSong.find_or_create_by(playlist_id: 2, song_id: 1)
playlist_song1 = PlaylistSong.find_or_create_by(playlist_id: 3, song_id: 1)
playlist_song1 = PlaylistSong.find_or_create_by(playlist_id: 4, song_id: 1)
playlist_song1 = PlaylistSong.find_or_create_by(playlist_id: 3, song_id: 5)
