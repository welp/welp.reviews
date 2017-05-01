class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :parent_category_id

      t.timestamps
    end

    add_column :businesses, :primary_category_id, :integer
    add_column :businesses, :secondary_category_id, :integer
    add_column :businesses, :tertiary_category_id, :integer
  end
end
