class SongsController < ApplicationController

    def index
      render json: Song.all
    end

    def create
        newSong = Song.find_by(title: params[:title])
        if newSong
          newPSRelationship = PlaylistSong.create(song_id: newSong.id, playlist_id: params[:playlist_id])
          render json: {playlistSong: PlaylistSong.find(newPSRelationship.id),
            song: newSong}
        else
          render json: {message: "Guess its is not here yet!"}
        end
    end

end
