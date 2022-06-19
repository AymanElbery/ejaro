class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.integer :kilometers, default: 0
      t.string :lat
      t.string :long
      t.string :images, array: true
      t.datetime :available_from
      t.datetime :available_until

      t.timestamps
    end
  end
end
