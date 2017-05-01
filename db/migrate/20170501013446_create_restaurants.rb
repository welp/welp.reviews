class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.integer :price
      t.string :url
      t.string :menu_url
      t.boolean :closed
      t.text :address
      t.string :phone
      t.text :hours

      t.timestamps
    end
  end
end
