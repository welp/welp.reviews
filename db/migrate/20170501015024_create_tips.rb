class CreateTips < ActiveRecord::Migration[5.1]
  def change
    create_table :tips do |t|
      t.integer :user_id,       null: false
      t.integer :restaurant_id, null: false
      t.string  :body,          null: false

      t.timestamps
    end
  end
end
