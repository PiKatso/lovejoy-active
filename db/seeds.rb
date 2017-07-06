Product.destroy_all
Review.destroy_all

45.times do |i|
  product = Product.create!(
    name: Faker::Coffee.blend_name,
    cost: Faker::Number.decimal(2),
    origin: Faker::Address.country,
    brand: Faker::Superhero.descriptor,
    style: Faker::Coffee.variety,
    url: Faker::Avatar.image
    )
  5.times do |i|
    review = product.reviews.create!(
        author: Faker::TwinPeaks.character,
        content: Faker::Lorem.characters(75),
        rating: Faker::Number.between(1, 5)
        )
  end
end


5.times do |i|
  product = Product.create!(
    name: Faker::Coffee.blend_name,
    cost: Faker::Number.decimal(2),
    origin: "USA",
    brand: Faker::Superhero.descriptor,
    style: Faker::Coffee.variety,
    url: Faker::Avatar.image
    )
  5.times do |i|
    review = product.reviews.create!(
        author: Faker::TwinPeaks.character,
        content: Faker::Lorem.characters(75),
        rating: Faker::Number.between(1, 5)
        )
  end
end

p "Created #{Product.count} products"

# once initially set up/to edit must run 'rake db:setup'
# also 'rake db:test:prepare'
