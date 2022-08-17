puts "Creating companies..."
Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

puts "Creating freebies..."
# Freebie.create(item_name: "Fidget Spinner", value: 5, company_id: Company.all.sample.id, dev_id: Dev.all.sample.id)
# Freebie.create(item_name: "Rubik's Cube", value: 15, company_id: Company.all.sample.id, dev_id: Dev.all.sample.id)
# Freebie.create(item_name: "PS5", value: 600, company_id: Company.all.sample.id, dev_id: Dev.all.sample.id)

20.times do
    Freebie.create(item_name: Faker::Commerce.product_name, value: Faker::Number.between(from = 1, to = 5000), company_id: Faker::Number.between(from = 1, to = 4), dev_id: Faker::Number.between(from = 1, to = 4))
end



puts "Seeding done!"
