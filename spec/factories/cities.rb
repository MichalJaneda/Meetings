FactoryGirl.define do
  factory :city do
    name { Faker::Lorem.unique.word }
    country
  end
end
