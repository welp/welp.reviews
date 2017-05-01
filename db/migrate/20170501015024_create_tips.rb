class CreateTips < ActiveRecord::Migration[5.1]
  def change
    create_table :tips do |t|
      t.integer :user_id
      t.integer :business_id
      t.string :body

      t.timestamps
    end
  end
end
