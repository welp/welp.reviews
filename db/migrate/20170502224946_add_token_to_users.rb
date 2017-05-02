class AddTokenToUsers < ActiveRecord::Migration[5.1]
  def up
    remove_column :users, :password_digest
    add_column :users, :token, :string
  end

  def down
    remove_column :users, :token
    add_column :users, :password_digest, :string
  end
end
