user1 = User.create!(
  id:1,
  email: 'user1@email',
  password: 'user123',
  password_confirmation: 'user123',
  nickname: 'ユーザー１',
  gender: '男性',
  municipality_id: 1,
  age: 20,
  history: 4,
  style_id: 2,
  profile:"夏場メインで釣りをしています。\r\nよろしくお願いします。",
)
user1.user_image.attach(io: File.open(Rails.root.join('app/assets/images/seed/user1.png')),
                  filename: 'user1.png')

user2 = User.create!(
  id:2,
  email: 'user2@email',
  password: 'user123',
  password_confirmation: 'user123',
  nickname: 'ユーザー2',
  gender: '女性',
  municipality_id: 2,
  age: 32,
  history: 10,
  style_id: 1,
  profile:"バス釣りをよくします。\r\nおすすめのスポットがあれば教えてください！"
)
user2.user_image.attach(io: File.open(Rails.root.join('app/assets/images/user2.png')),
                  filename: 'user2.png')

p1 = Post.create!(
  fishing_date:'2021-04-01',
  fishing_time:'00:00:00',
  municipality_id:1,
  spot:'立田大橋',
  latitude:'35.14566420000001',
  longitude:'136.6810621',
  weather_id:1,
  fish_kind_id:15,
  fish_name:'ニホンウナギ',
  gimmick:'アオイソメ',
  rod:'エクストリーム TULALA エルホリゾンテ83',
  reel:'シマノ スピニングリール 18 ステラ 4000XG',
  line:'サンライン 雷魚ブレイド',
  explanation:"ぬめぬめしていたので手袋必須です\r\n子供も連れていたので簡単に釣れると思います。",
  user_id:1
)

p2 = Post.create!(
  fishing_date:'2021-04-02',
  fishing_time:'01:00:00',
  municipality_id:2,
  spot:'',
  latitude:'',
  longitude:'',
  weather_id:2,
  fish_kind_id:80,
  fish_name:'',
  gimmick:'ルアー',
  rod:'',
  reel:'',
  line:'',
  explanation:'',
  user_id:1
)
p3 = Post.create!(
  fishing_date:'2021-04-03',
  fishing_time:'02:00:00',
  municipality_id:3,
  spot:'',
  latitude:'',
  longitude:'',
  weather_id:3,
  fish_kind_id:77,
  fish_name:'',
  gimmick:'イシゴカイ',
  rod:'',
  reel:'',
  line:'',
  explanation:'',
  user_id:1
)
p4 = Post.create!(
  fishing_date:'2021-04-04',
  fishing_time:'04:00:00',
  municipality_id:1,
  spot:'立田大橋',
  latitude:'35.14566420000001',
  longitude:'136.6810621',
  weather_id:4,
  fish_kind_id:15,
  fish_name:'ニホンウナギ',
  gimmick:'アオイソメ',
  rod:'エクストリーム TULALA エルホリゾンテ83',
  reel:'シマノ スピニングリール 18 ステラ 4000XG',
  line:'サンライン 雷魚ブレイド',
  explanation:"ぬめぬめしていたので手袋必須です\r\n子供も連れていたので簡単に釣れると思います。",
  user_id:1
)

p5 = Post.create!(
  fishing_date:'2021-04-05',
  fishing_time:'05:00:00',
  municipality_id:2,
  spot:'',
  latitude:'',
  longitude:'',
  weather_id:5,
  fish_kind_id:80,
  fish_name:'',
  gimmick:'ルアー',
  rod:'',
  reel:'',
  line:'',
  explanation:'',
  user_id:1
)
p6 = Post.create!(
  fishing_date:'2021-04-06',
  fishing_time:'06:00:00',
  municipality_id:3,
  spot:'',
  latitude:'',
  longitude:'',
  weather_id:6,
  fish_kind_id:77,
  fish_name:'',
  gimmick:'イシゴカイ',
  rod:'',
  reel:'',
  line:'',
  explanation:'',
  user_id:1
)
p7 = Post.create!(
  fishing_date:'2021-04-07',
  fishing_time:'07:00:00',
  municipality_id:1,
  spot:'立田大橋',
  latitude:'35.14566420000001',
  longitude:'136.6810621',
  weather_id:7,
  fish_kind_id:15,
  fish_name:'ニホンウナギ',
  gimmick:'アオイソメ',
  rod:'エクストリーム TULALA エルホリゾンテ83',
  reel:'シマノ スピニングリール 18 ステラ 4000XG',
  line:'サンライン 雷魚ブレイド',
  explanation:"ぬめぬめしていたので手袋必須です\r\n子供も連れていたので簡単に釣れると思います。",
  user_id:1
)

p8 = Post.create!(
  fishing_date:'2021-04-08',
  fishing_time:'08:00:00',
  municipality_id:2,
  spot:'',
  latitude:'',
  longitude:'',
  weather_id:8,
  fish_kind_id:80,
  fish_name:'',
  gimmick:'ルアー',
  rod:'',
  reel:'',
  line:'',
  explanation:'',
  user_id:1
)
p9 = Post.create!(
  fishing_date:'2021-04-09',
  fishing_time:'09:00:00',
  municipality_id:3,
  spot:'',
  latitude:'',
  longitude:'',
  weather_id:1,
  fish_kind_id:77,
  fish_name:'',
  gimmick:'イシゴカイ',
  rod:'',
  reel:'',
  line:'',
  explanation:'',
  user_id:1
)
p10 = Post.create!(
  fishing_date:'2021-04-10',
  fishing_time:'10:00:00',
  municipality_id:1,
  spot:'立田大橋',
  latitude:'35.14566420000001',
  longitude:'136.6810621',
  weather_id:2,
  fish_kind_id:15,
  fish_name:'ニホンウナギ',
  gimmick:'アオイソメ',
  rod:'エクストリーム TULALA エルホリゾンテ83',
  reel:'シマノ スピニングリール 18 ステラ 4000XG',
  line:'サンライン 雷魚ブレイド',
  explanation:"ぬめぬめしていたので手袋必須です\r\n子供も連れていたので簡単に釣れると思います。",
  user_id:1
)

p11 = Post.create!(
  fishing_date:'2021-04-11',
  fishing_time:'11:00:00',
  municipality_id:2,
  spot:'',
  latitude:'',
  longitude:'',
  weather_id:3,
  fish_kind_id:80,
  fish_name:'',
  gimmick:'ルアー',
  rod:'',
  reel:'',
  line:'',
  explanation:'',
  user_id:1
)
p12 = Post.create!(
  fishing_date:'2021-04-12',
  fishing_time:'12:00:00',
  municipality_id:3,
  spot:'',
  latitude:'',
  longitude:'',
  weather_id:4,
  fish_kind_id:77,
  fish_name:'',
  gimmick:'イシゴカイ',
  rod:'',
  reel:'',
  line:'',
  explanation:'',
  user_id:1
)

p1.fish_image.attach(io: File.open(Rails.root.join('app/assets/images/seed/fish1.png')),
                  filename: 'fish1.png')
p2.fish_image.attach(io: File.open(Rails.root.join('app/assets/images/seed/fish2.png')),
                  filename: 'fish2.png')
p4.fish_image.attach(io: File.open(Rails.root.join('app/assets/images/seed/fish4.png')),
                  filename: 'fish4.png')
p5.fish_image.attach(io: File.open(Rails.root.join('app/assets/images/seed/fish5.png')),
                  filename: 'fish5.png')
p7.fish_image.attach(io: File.open(Rails.root.join('app/assets/images/seed/fish7.png')),
                  filename: 'fish7.png')
p8.fish_image.attach(io: File.open(Rails.root.join('app/assets/images/seed/fish8.png')),
                  filename: 'fish8.png')
p10.fish_image.attach(io: File.open(Rails.root.join('app/assets/images/seed/fish10.png')),
                  filename: 'fish10.png')
p11.fish_image.attach(io: File.open(Rails.root.join('app/assets/images/seed/fish11.png')),
                  filename: 'fish11.png')