Company.destroy_all
Dev.destroy_all
Freebie.destroy_all
Company.reset_pk_sequence
Dev.reset_pk_sequence
Freebie.reset_pk_sequence

puts "Creating companies..."
Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)
4.times do
    Company.create(name: Faker::Company.name, founding_year: Faker::Number.between(from = 1989, to = 2022))
end

puts "Creating devs..."
Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")
8.times do
    Dev.create(name: Faker::Name.first_name)
end

puts "Creating freebies..."
# Freebie.create(item_name: "Fidget Spinner", value: 5, company_id: Company.all.sample.id, dev_id: Dev.all.sample.id)
# Freebie.create(item_name: "Rubik's Cube", value: 15, company_id: Company.all.sample.id, dev_id: Dev.all.sample.id)
# Freebie.create(item_name: "PS5", value: 600, company_id: Company.all.sample.id, dev_id: Dev.all.sample.id)

20.times do
    Freebie.create(item_name: Faker::Commerce.product_name, value: Faker::Number.between(from = 1, to = 5000), company_id: Faker::Number.between(from = 1, to = Company.all.length), dev_id: Faker::Number.between(from = 1, to = Dev.all.length))
end



puts "Seeding done!"
