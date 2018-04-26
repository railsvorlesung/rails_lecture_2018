FactoryBot.define do
  factory :blog_post do
    title  { Faker::ChuckNorris.fact }
    body   do
      Faker::Lorem.paragraphs(30).join('')
    end
  end
end
