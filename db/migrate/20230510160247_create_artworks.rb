class CreateArtworks < ActiveRecord::Migration[6.1]
  def change
    create_table :artworks do |t|
      t.string :title
      t.string :year
      t.text :medium
      t.text :collection
      t.timestamps
    end
  end
end
