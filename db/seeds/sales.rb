100.times do
    Sale.create(
        total:rand(1990..10000),
        kofi_id: rand(Kofi.first.id..Kofi.last.id),
        created_at: Faker::Date.between(from: 1.year.ago, to: Date.today)
    )
end