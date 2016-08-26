FactoryGirl.define do
  sequence :name do |n|
  	"Archer B Smiddlefinks_#{n}"
  end
  sequence :username do |n|
  	"#archer_#{n}"
  end
  sequence :email do |n|
  	"archer_#{n}@gmail.com"
  end

  sequence :title do |n|
    "Proposal_#{n}"
  end

  sequence :body do |n|
    "#{n} #{Faker::Lorem.sentence(2)}"
  end

end
