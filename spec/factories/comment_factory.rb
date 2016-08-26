FactoryGirl.define do
  factory :comment do
    body { FactoryGirl.generate(:body)}
    user
    proposal
  end
end
