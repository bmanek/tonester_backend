class PlaylistsController < ApplicationController
    def index
    render json: Playlist.all
    end
    
    def create 
       
        Playlist.find_or_create_by(title: params[:title],user_id: params[:user_id])
        render json: {message: "new PLaylist Created"}
    end
end
