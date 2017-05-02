class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :name, null: false
      t.integer :parent_category_id

      t.timestamps
    end

    add_column :restaurants, :primary_category_id,   :integer, null: false
    add_column :restaurants, :secondary_category_id, :integer
    add_column :restaurants, :tertiary_category_id,  :integer
  end
end
