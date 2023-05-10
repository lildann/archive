class ArtworksController < ApplicationController
  def index
    @artworks = Artwork.all
  end

  def new
    @artwork = Artwork.new
  end

  def create
    @artwork = Artwork.new(message_params)
    if @artwork.save
      redirect_to '/'
    else
      render 'new'
    end
  end

  private
  def message_params
    params.require(:artwork).permit(:title, :year, :medium, :collection)
  end

end
