class Weather < ActiveHash::Base
  self.data = [
    { id: 1, name: '快晴' }, { id: 2, name: '晴れ' }, { id: 3, name: '薄曇り' },
    { id: 4, name: '曇り' }, { id: 5, name: '霧' }, { id: 6, name: '雨' },
    { id: 7, name: '雪' }, { id: 8, name: '雷' }
  ]

  include ActiveHash::Associations
  has_many :posts
end
