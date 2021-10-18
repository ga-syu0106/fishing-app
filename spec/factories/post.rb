FactoryBot.define do
  factory :post do
    fishing_date     {'2001-01-01'}
    fishing_time     {'00:00:00'}
    municipality_id  {rand(1..54)}
    spot             {'スポット'}
    latitude         {'34.7773'}
    longitude        {'137.176'}
    weather_id       {rand(1..8)}
    fish_kind_id     {rand(1..98)}
    fish_name        {(Faker::Name)}
    gimmick          {'仕掛けです'}
    rod              {'ロッドです'}
    reel             {'リールです'}
    line             {'ラインです'}
    explanation      {'説明です'}

    association :user

    after(:build) do |post|
      post.fish_image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image_png')
    end

  end
end