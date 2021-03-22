class Municipality < ActiveHash::Base
  self.data = [
    {id: 1, name: '愛西市'},{id: 2, name: '阿久比町'},{id: 3, name: 'あま市'},
    {id: 4, name: '安城市'},{id: 5, name: '一宮市'},{id: 6, name: '稲沢市'},
    {id: 7, name: '犬山市'},{id: 8, name: '岩倉市'},{id: 9, name: '大口町'},
    {id: 10, name: '大治町'},{id: 11, name: '大府市'},{id: 12, name: '尾張旭市'},
    {id: 13, name: '岡崎市'},{id: 14, name: '春日井市'},{id: 15, name: '蟹江町'},
    {id: 16, name: '蒲郡市'},{id: 17, name: '刈谷市'},{id: 18, name: '北名古屋市'},
    {id: 19, name: '清須市'},{id: 20, name: '幸田町'},{id: 21, name: '江南市'},
    {id: 22, name: '小牧市'},{id: 23, name: '設楽町'},{id: 24, name: '新城市'},
    {id: 25, name: '瀬戸市'},{id: 26, name: '高浜市'},{id: 27, name: '武豊町'},
    {id: 28, name: '田原市'},{id: 29, name: '知多市'},{id: 30, name: '知立市'},
    {id: 31, name: '津島市'},{id: 32, name: '東栄町'},{id: 33, name: '東海市'},
    {id: 34, name: '東郷町'},{id: 35, name: '常滑市'},{id: 36, name: '飛島村'},
    {id: 37, name: '豊明市'},{id: 38, name: '豊川市'},{id: 39, name: '豊田市'},
    {id: 40, name: '豊根村'},{id: 41, name: '豊橋市'},{id: 42, name: '豊山町'},
    {id: 43, name: '長久手市'},{id: 44, name: '名古屋市'},{id: 45, name: '西尾市'},
    {id: 46, name: '日進市'},{id: 47, name: '半田市'},{id: 48, name: '東浦町'},
    {id: 49, name: '扶桑町'},{id: 50, name: '碧南市'},{id: 51, name: '南知多町'},
    {id: 52, name: '美浜町'},{id: 53, name: 'みよし市'},{id: 54, name: '弥富市'},
  ]

  include ActiveHash::Associations
  has_many :users
end
