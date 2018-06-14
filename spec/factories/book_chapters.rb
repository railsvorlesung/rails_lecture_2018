FactoryBot.define do
  factory :book_chapter do
    title {Faker::Lorem.sentence}
    body  {Faker::Lorem.paragraph}

    trait :with_authors_and_reviewers do
      association :book
      
      after(:create) do |chapter, e|
        chapter.authors.create(FactoryBot.attributes_for(:user))
        chapter.reviewers.create(FactoryBot.attributes_for(:user))
      end
    end
  end
end
