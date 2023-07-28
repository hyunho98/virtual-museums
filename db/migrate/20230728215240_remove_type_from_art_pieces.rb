class RemoveTypeFromArtPieces < ActiveRecord::Migration[6.1]
  def change
    remove_column :art_pieces, :type, :string
  end
end
