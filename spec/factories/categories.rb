FactoryBot.define do
  factory :category do
    name { Faker::Lorem.sentence }
    priority { rand(1...10) }
  end
end
