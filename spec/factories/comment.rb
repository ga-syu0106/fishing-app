FactoryBot.define do
  factory :comment do
    text {'おはようございます'}

  association :post
  user { post.user }

  end
end