class AddImageToMuseums < ActiveRecord::Migration[6.1]
  def change
    add_column :museums, :image_link, :string
  end
end
