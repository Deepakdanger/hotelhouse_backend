class CreateHouses < ActiveRecord::Migration[6.1]
  def change
    create_table :houses do |t|
      t.string :title
      t.text :cost
      t.text :location

      t.timestamps
    end
  end
end
