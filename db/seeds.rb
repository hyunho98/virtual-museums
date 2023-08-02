puts "🌱 Seeding spices..."

# Seed your database here
2.times do 
    Museum.create(
        name: Faker::Name.name,
        capacity: 10,
        image_link: Faker::LoremFlickr.image
    )
end

Museum.all.each do |museum|
    5.times do
        Artist.create(
            name: Faker::Artist.name,
            style: Faker::Lorem.word,
            museum_id: museum.id,
            image_link: Faker::Avatar.image
        )
    end
end

Artist.all.each do |artist|
    5.times do
        ArtPiece.create(
            name: Faker::Lorem.word,
            description: Faker::Lorem.sentence,
            completion_date: Faker::Date.between(from: '1700-01-01', to: Date.today),
            artist_id: artist.id,
            image_link: Faker::LoremFlickr.image
        )
    end
end

puts "✅ Done seeding!"
