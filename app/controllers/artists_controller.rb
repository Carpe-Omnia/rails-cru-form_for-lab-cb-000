class ArtistsController < ApplicationController
  def index
    @Artists = Artist.all
  end
  def new
  end
  def create
    @artist = Artist.new()
  end
  def show
    @artist = Artist.find_by(id: params[:id])
  end




  private
  def artist_params(*args)
    params.require(:artist).permit(*args)
  end
end
