class SongsController < ApplicationController
  def index
    @songs = song.all
  end

  def create
    @song = song.new(song_params(:name))
    art = Artist.find_or_create_by(name: params[:song][:artist])
    @song.artist_id = art.id
    @song.save
    redirect_to song_path(@song)
  end

  def new
  end

  def show
    @song = song.find_by(id: params[:id])
  end

  def update
    @song = song.find(params[:id])
    @song.update(song_params(:name))
    redirect_to song_path(@song)
  end

  def edit
    @song = song.find(params[:id])
  end

  private
  def song_params(*args)
    params.require(:song).permit(*args)
  end
end
