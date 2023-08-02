class AddImageToArtPieces < ActiveRecord::Migration[6.1]
  def change
    add_column :art_pieces, :image_link, :string
  end
end
