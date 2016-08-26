FactoryGirl.define do
  factory :proposal do
    title     { FactoryGirl.generate(:title) }
    abstract    Faker::Lorem.sentence
    intro       Faker::Lorem.sentence(2)
    hypothesis  Faker::Lorem.sentence(2)
    exp_method  Faker::Lorem.sentence(2)
    date_start  Faker::Date.forward(1)
    date_end    Faker::Date.forward(365)
    status      "seeking approval"
  end
end
