class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.integer :kilometers_traveled
      t.float :latitude
      t.float :longitude
      t.datetime :available_from
      t.datetime :available_until

      t.timestamps
    end
  end
end
