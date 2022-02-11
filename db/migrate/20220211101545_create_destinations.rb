class CreateDestinations < ActiveRecord::Migration[6.1]
  def change
    create_table :destinations do |t|
      t.string :cordinates
      t.string :location_name
      t.string :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
