class PlaylistSongsController < ApplicationController

  def destroy
    PlaylistSong.find(params)
    render json: {message: "YA BASIC"}
  end
end
