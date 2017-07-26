FactoryGirl.define do
  factory :meeting do
    user
    place
    name { Faker::Lorem.sentence(3, false, 2) }
    attenders_limit { Faker::Number.between(2, 20) }
    current_attenders { Faker::Number.between(0, attenders_limit) }
    ticket_price { Faker::Number.between(1, 100) }
    date { Time.now + 7.days }

    before(:save) { |meeting| meeting.free = meeting.ticket_price.zero? }
  end
end
