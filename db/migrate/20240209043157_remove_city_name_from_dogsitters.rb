class RemoveCityNameFromDogsitters < ActiveRecord::Migration[7.1]
  def change
    remove_column :dogsitters, :city_name, :string
  end
end
