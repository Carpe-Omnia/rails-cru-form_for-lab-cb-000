class GenresController < ApplicationController
  def index
    @genres = genre.all
  end

  def create
    @genre = genre.new(genre_params(:name))
    @genre.save
    redirect_to genre_path(@genre)
  end

  def new
  end

  def show
    @genre = genre.find_by(id: params[:id])
  end

  def update
    @genre = genre.find(params[:id])
    @genre.update(genre_params(:name))
    redirect_to genre_path(@genre)
  end

  def edit
    @genre = genre.find(params[:id])
  end

  private
  def genre_params(*args)
    params.require(:genre).permit(*args)
  end
end
