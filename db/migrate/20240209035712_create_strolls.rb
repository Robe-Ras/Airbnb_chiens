class CreateStrolls < ActiveRecord::Migration[7.1]
  def change
    create_table :strolls do |t|
      t.datetime :date
      t.references :dog, null: false, foreign_key: true
      t.references :dogsitter, null: false, foreign_key: true
      t.references :city, null: false, foreign_key: true # Ajoutez cette ligne pour la référence à la ville

      t.timestamps
    end
  end
end
