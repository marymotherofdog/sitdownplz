class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :url
      t.string :open_time
      t.string :close_time

      t.timestamps null: false
    end
  end
end
