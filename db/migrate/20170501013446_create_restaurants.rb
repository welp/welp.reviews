class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :name,    null: false
      t.integer :price,  null: false
      t.string :url
      t.string :menu_url
      t.boolean :closed, default: false
      t.text :address
      t.string :phone
      t.text :hours

      t.timestamps
    end
  end
end
