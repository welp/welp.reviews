class AddPhotoToRestaurants < ActiveRecord::Migration[5.1]
  def change
    add_column :restaurants, :photo_url, :string
  end
end
