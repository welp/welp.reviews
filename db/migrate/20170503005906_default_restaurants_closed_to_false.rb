class DefaultRestaurantsClosedToFalse < ActiveRecord::Migration[5.1]
  def up
    change_column :restaurants, :closed, :boolean, null: false, default: false
  end

  def down
    change_column :restaurants, :closed, :boolean, null: true, default: nil
  end
end
