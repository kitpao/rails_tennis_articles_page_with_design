FactoryBot.define do
  factory :article do
    author { nil }
    title { Faker::Lorem.sentence }
    text { Faker::Lorem.paragraph }
  end
end
