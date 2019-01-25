class ArtistsController < ApplicationController
  def index
    @Artists = Artist.all
  end
  def show
    @artist = Artist.find_by(id: params[:id])
  end

end
