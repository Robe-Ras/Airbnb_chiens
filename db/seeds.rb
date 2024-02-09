# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


require 'faker'
Faker::Config.locale = 'fr'

# Je crée des villes
10.times do
  city = City.create(city_name: Faker::Address.city)
  
  # Je crée une promenade pour chaque ville
  10.times do
    dog = Dog.where(city: city).sample
    dogsitter = Dogsitter.where(city: city).sample
    Stroll.create(
      date: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now),
      dog: dog,
      dogsitter: dogsitter,
      city: city
    )
  end
end

# Je crée des chiens associés à des villes existantes
10.times do
  city = City.all.sample # Sélectionne aléatoirement une ville existante
  Dog.create(name: Faker::Creature::Dog.name, city: city)
end


# Je crée des dogsitters associés à des villes existantes
10.times do
  city = City.all.sample # Sélectionne aléatoirement une ville existante
  Dogsitter.create(name: Faker::Name.name, city: city)
end








