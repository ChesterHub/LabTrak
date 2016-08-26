FactoryGirl.define do
  factory :user do
    name { FactoryGirl.generate(:name) }
    email { FactoryGirl.generate(:email) }
    password 'asdf'
    role 'user'
  end
end
