FactoryBot.define do
  factory :user do
    email                 {Faker::Internet.email}
    password              {Faker::Internet.password(min_length: 20)}
    password_confirmation {password}
    nickname              {Faker::Name.initials(number: rand(1..6))}
    gender                {'男性'}
    municipality_id       {rand(1..54)}
    age                   {rand(20..70)}
    history               {age - rand(1..10)}
    style_id              {rand(1..3)}
    profile               {'おはようございます'}

    after(:build) do |user|
      user.user_image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image_png')
    end
  end
end