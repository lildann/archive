class ArtworksController < ApplicationController
  before_action :find_artwork, only: [:show, :edit, :update]
  
  def index
    @artworks = Artwork.all
  end

  def new
    @artwork = Artwork.new
  end

  def create
    @artwork = Artwork.new(artwork_params)
    if @artwork.save
      redirect_to '/'
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @artwork.update(artwork_params)
      redirect_to '/'
    else
      render :edit
    end
  end

  private

  def find_artwork
    @artwork = Artwork.find(params[:id])
  end

  def artwork_params
    params.require(:artwork).permit(:image, :title, :year, :medium, :dimensions, :collection)
  end
end
