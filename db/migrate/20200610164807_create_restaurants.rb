class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :imgURL
      t.string :location
      t.string :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
