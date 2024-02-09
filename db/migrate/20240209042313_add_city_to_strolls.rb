class AddCityToStrolls < ActiveRecord::Migration[7.1]
  def change
    add_reference :strolls, :city, foreign_key: true
  end
end
