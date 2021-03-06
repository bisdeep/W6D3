class UpdateArtworksColumns < ActiveRecord::Migration[5.2]
  def change

    add_index :artworks, :artist_id, unique: true
    add_index :artworks, [:artist_id, :title], unique: true
  end
end
