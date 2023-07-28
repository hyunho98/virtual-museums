class RemoveCreatedAtFromArtPieces < ActiveRecord::Migration[6.1]
  def change
    remove_column :art_pieces, :created_at, :string
  end
end
