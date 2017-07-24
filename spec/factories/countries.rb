FactoryGirl.define do
  factory :country do
    name { Faker::Lorem.unique.word }
  end
end
