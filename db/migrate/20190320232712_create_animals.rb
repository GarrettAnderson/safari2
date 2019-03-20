class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.string :species
      t.integer :seen_count
      t.string :last_seen_location

      t.timestamps
    end
  end
end
