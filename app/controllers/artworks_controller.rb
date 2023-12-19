class ArtworksController < ApplicationController
  before_action :find_artwork, only: [:show, :edit, :update, :destroy]
  
  def index
    @artworks = Artwork.all.order("year DESC")
  end

  def new
    @artwork = Artwork.new
  end

  def create
    @artwork = Artwork.new(artwork_params)
    if @artwork.save
      redirect_to '/artworks'
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
      redirect_to '/artworks'
    else
      render :edit
    end
  end

  def destroy
    @artwork.destroy
    redirect_to '/artworks'
  end

  def home
    nineties 
    eighties
    seventies
    sixties
    fifties
    forties
  end
 

  private

  def find_artwork
    @artwork = Artwork.find(params[:id])
  end

  def artwork_params
    params.require(:artwork).permit(:image, :title, :year, :medium, :dimensions, :collection)
  end

  def nineties 
    @nineties = []
    Artwork.all.each { |artwork| @nineties << artwork if artwork.year[2] == "9" }
  end
  
  def eighties 
    @eighties = []
    Artwork.all.each { |artwork| @eighties << artwork if artwork.year[2] == "8" }
  end

  def seventies 
    @seventies = []
    Artwork.all.each { |artwork| @seventies << artwork if artwork.year[2] == "7" }
  end

  def sixties 
    @sixties = []
    Artwork.all.each { |artwork| @sixties << artwork if artwork.year[2] == "6" }
  end

  def fifties
    @fifties = []
    Artwork.all.each { |artwork| @fifties << artwork if artwork.year[2] == "5" }
  end

  def forties
    @forties = []
    Artwork.all.each { |artwork| @forties << artwork if artwork.year[2] == "4" }
  end

end
