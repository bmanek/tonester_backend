class SongsController < ApplicationController
    def search 
        newSong = Song.find_by(title: params[:title])
        if newSong
        render json: Song.find(newSong.id)
        else
        render json: {message: "Guess its is not here yet!"}    
        end
    end
end
