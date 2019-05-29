class PlaylistsController < ApplicationController
    def index
    render json: PlaylistSong.all
    end
end
