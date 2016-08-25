# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

20.times {User.create(name: Faker::Name.name, email: Faker::Internet.email, password_hash: "yes", role: Faker::Team.creature)}

10.times do |i|
  proposal = Proposal.create(title: Faker::Book.title, abstract: Faker::Lorem.sentence, intro: Faker::Lorem.sentence(2), hypothesis: Faker::Lorem.sentence(2), method: Faker::Lorem.sentence(2), date_start: Faker::Date.between(2.days.ago, Date.today), date_end: Faker::Date.between(2.days.ago, Date.today), status: "seeking approval")
  2.times { proposal.users << User.all.sample }
end

