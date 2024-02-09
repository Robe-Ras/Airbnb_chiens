class RemoveCityNameFromDogs < ActiveRecord::Migration[7.1]
  def change
    remove_column :dogs, :city_name, :string
  end
end
