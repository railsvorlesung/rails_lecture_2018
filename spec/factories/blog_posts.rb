FactoryBot.define do
  factory :blog_post do
    title  { Faker::ChuckNorris.fact.encode!('ASCII', replace: '') }
    body   do
      Faker::Lorem.paragraphs(30).join('')
    end
    association :user
  end
end
