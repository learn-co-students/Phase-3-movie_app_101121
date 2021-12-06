#use faker to create seeds
#https://github.com/faker-ruby/faker
#Here are some examples


puts "🌱 Seeding garden..."

10.times {Movie.create({title:Faker::Movie.title , director:Faker::Name.name, description:Faker::Movie.quote, showing:true})}

50.times{Ticket.create({name:Faker::Name.name, price:5.00, movie_id: Movie.all.sample.id})}


puts "✅ Done seeding!"


