class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def create
    @song = Song.new(song_params(:name))
    art = Artist.find_or_create_by(name: params[:song][:artist])
    gen = Genre.find_or_create_by(name: params[:song][:genre])
    @song.artist_id = art.id
    @song.genre_id = gen.id
    @song.save
    redirect_to song_path(@song)
  end

  def new
  end

  def show
    @song = Song.find_by(id: params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update(song_params(:name))
    art = Artist.find_or_create_by(name: params[:song][:artist])
    gen = Genre.find_or_create_by(name: params[:song][:genre])
    @song.artist_id = art.id
    @song.genre_id = gen.id
    @song.save
    redirect_to song_path(@song)
  end

  def edit
    @song = Song.find(params[:id])
  end

  private
  def song_params(*args)
    params.require(:song).permit(*args)
  end
end
