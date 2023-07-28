class AddCompletionDateToArtPieces < ActiveRecord::Migration[6.1]
  def change
    add_column :art_pieces, :completion_date, :date
  end
end
