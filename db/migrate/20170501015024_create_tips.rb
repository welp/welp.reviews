class CreateTips < ActiveRecord::Migration[5.1]
  def change
    create_table :tips do |t|
      t.integer :user_id
      t.integer :restaurant_id
      t.string :body

      t.timestamps
    end
  end
end
