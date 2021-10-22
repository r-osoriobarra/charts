15.times do
    Kofi.create(
        name: Faker::Name.unique.name,
        price: rand(1990..5490),
        origin: Faker::Coffee.origin,
        blend: Faker::Coffee.blend_name
    )
end 