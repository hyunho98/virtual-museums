class AddImageToArtists < ActiveRecord::Migration[6.1]
  def change
    add_column :artists, :image_link, :string
  end
end
