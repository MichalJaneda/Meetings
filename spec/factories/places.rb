FactoryGirl.define do
  factory :place do
    city
    name { Faker::Lorem.sentence(2, false, 0) }
    address { Faker::Name.name_with_middle }
    building { Faker::Number.hexadecimal(2) }
    local { Faker::Number.hexadecimal(4) }
  end
end
