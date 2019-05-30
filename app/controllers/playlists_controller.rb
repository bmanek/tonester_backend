class PlaylistsController < ApplicationController
    def index
    render json: Playlist.all
    end
    
    def create 
       newPlaylist =  Playlist.find_or_create_by(title: params[:title],user_id: params[:user_id])
        render json: newPlaylist
    end

    def edit 
       Playlist.find(params[:id])
    end 
    
    def update
       
       song = Playlist.find(params[:id])
           if song
            song.update_attributes(title:params[:title])
            render json: song
           else 
            render json: {message: "not Patched"}
           end
    end

    def destroy
        song = PlaylistSong.find_by(params[playlist_id: params[:playlisId],song_id: params[:songId]])
            if song 
                song.destroy
                render json: {message: "Deleted"}
            else
                render json: {message: "not deleted"}  
            end     
    end

    def playlistDelete
        Playlist.find(params[:id]).destroy

    end 

end
