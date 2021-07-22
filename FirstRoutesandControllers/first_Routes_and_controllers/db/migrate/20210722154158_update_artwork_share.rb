class UpdateArtworkShare < ActiveRecord::Migration[5.2]
  def change
    remove_column :artwork_shares, :viewer_id
    remove_column :artwork_shares, :artwork_id

    add_column :artwork_shares, :viewer_id, :integer
    add_column :artwork_shares, :artwork_id, :integer

    add_index :artwork_shares, [:viewer_id, :artwork_id], unique: true

  end
end
