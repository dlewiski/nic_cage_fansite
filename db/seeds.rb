
Movie.destroy_all
Fact.destroy_all
Photo.destroy_all

10.times do |index|
  Movie.create!(name: Faker::Coffee.blend_name, description: Faker::VForVendetta.quote, rating: Faker::Number.between(1, 10))
end

25.times do |index|
  Fact.create!(title: Faker::ChuckNorris.fact, rating: Faker::Number.between(1, 10))
end

25.times do |index|
  Photo.create!(url: Faker::Avatar.image, description: Faker::BackToTheFuture.quote, rating: Faker::Number.between(1, 10))
 end

p "Created #{Movie.count} movies"
p "Created #{Fact.count} movies"
p "Created #{Photo.count} movies"
