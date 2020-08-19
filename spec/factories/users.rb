FactoryBot.define do
  factory :user do
    name { Faker::Movies::HarryPotter.character }
  end
end
