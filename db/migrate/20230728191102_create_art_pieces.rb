class CreateArtPieces < ActiveRecord::Migration[6.1]
  def change
    create_table :art_pieces do |t|
      t.string :name
      t.string :description
      t.string :type
      t.string :created_at
      t.integer :artist_id
    end
  end
end
