class CreateUserProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :user_profiles do |t|
      t.integer :user_id
      t.string :name
      t.string :nickname
      t.string :tagline
      t.text :loves
      t.string :find_in
      t.string :hometown
      t.string :website
      t.string :when_not_welping
      t.string :second_favorite_site
      t.string :last_book
      t.string :first_concert
      t.string :favorite_movie
      t.string :last_meal
      t.string :secret
      t.string :recent_discovery
      t.string :crush
      t.string :language

      t.timestamps
    end
  end
end
