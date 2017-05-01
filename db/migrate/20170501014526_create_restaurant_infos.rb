class CreateRestaurantInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurant_infos do |t|
      t.integer :restaurant_id
      t.boolean :reservations
      t.boolean :delivery
      t.boolean :takeout
      t.boolean :credit_cards
      t.string :good_for, array: true
      t.string :parking, array: true
      t.boolean :bike_parking
      t.boolean :wheelchair_accessible
      t.boolean :good_for_kids
      t.boolean :good_for_groups
      t.string :attire
      t.string :ambience, array: true
      t.string :noise_level
      t.string :alcohol
      t.boolean :happy_hour
      t.string :best_nights, array: true
      t.boolean :smoking
      t.boolean :outdoor_seating
      t.string :wifi
      t.boolean :television
      t.boolean :dog_friendly
      t.boolean :caters
      t.boolean :gender_neutral_restrooms

      t.timestamps
    end
  end
end
