FactoryBot.define do
  factory :post do
    fishing_date     {Faker::Internet.email}
    fishing_time     {Faker::Internet.password(min_length: 20)}
    municipality_id  {password}
    spot             {Faker::Name.initials(number: rand(1..6))}
    latitude         {'男性'}
    longitude        {rand(1..54)}
    weather_id       {rand(20..70)}
    fish_kind_id     {age - rand(1..10)}
    fish_name        {rand(1..3)}
    gimmick          {'おはようございます'}
    rod              {}
    reel             {}
    line             {}
    explanation      {}
  end
end