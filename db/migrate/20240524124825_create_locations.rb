class CreateLocations < ActiveRecord::Migration[7.1]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :state
      t.string :directions
      t.float :latitude
      t.float :longitude
      t.string :country

      t.timestamps
    end
  end
end
