class AddCategoryToHouses < ActiveRecord::Migration[6.1]
  def change
    add_column :houses, :category, :string
  end
end
