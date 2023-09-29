class AddDimensionsToArtworks < ActiveRecord::Migration[6.1]
  def change
    add_column :artworks, :dimensions, :string
  end
end
