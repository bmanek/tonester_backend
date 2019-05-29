class SongsController < ApplicationController

    def index
      render json: Song.all
    end

    def create
        newSong = Song.find_by(title: params[:title])
        if newSong
          render json: newSong
          PlaylistSong.find_or_create_by(song_id: newSong.id, playlist_id: params[:playlist_id] )
        else
          render json: {message: "Guess its is not here yet!"}
        end
    end

end
