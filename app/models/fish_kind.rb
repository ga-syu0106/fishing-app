class FishKind < ActiveHash::Base
  self.data = [
    {id:1, name:"アイゴ"}, {id:2, name:"アイナメ"}, {id:3, name:"アカメ"},
    {id:4, name:"アシロ"}, {id:5, name:"アジ"}, {id:6, name:"アナゴ"},
    {id:7, name:"アミキリ"}, {id:8, name:"アユ"}, {id:9, name:"アンコウ"},
    {id:10, name:"イカ"}, {id:11, name:"イサキ"}, {id:12, name:"イシナギ"},
    {id:13, name:"イワシ"}, {id:14, name:"ウツボ"}, {id:15, name:"ウナギ"},
    {id:16, name:"ウミタナゴ"}, {id:17, name:"ウミヘビ"}, {id:18, name:"エイ"},
    {id:19, name:"エソ"}, {id:20, name:"エビ"}, {id:21, name:"カサゴ"},
    {id:22, name:"カジキ"}, {id:23, name:"カツオ"}, {id:24, name:"カニ"},
    {id:25, name:"カマス"}, {id:26, name:"カレイ"}, {id:27, name:"カワアナゴ"},
    {id:28, name:"カワハギ"}, {id:29, name:"カンパチ"}, {id:30, name:"ガジ"},
    {id:31, name:"ガー"}, {id:32, name:"キス"}, {id:33, name:"キュウリウオ"},
    {id:34, name:"ギンポ"}, {id:35, name:"クエ"}, {id:36, name:"クサウオ"},
    {id:37, name:"クロサギ"}, {id:38, name:"コイ"}, {id:39, name:"コチ"},
    {id:40, name:"コロソマ"}, {id:41, name:"ゴンベ"}, {id:42, name:"サバ"},
    {id:43, name:"サバヒー"}, {id:44, name:"サメ"}, {id:45, name:"サヨリ"},
    {id:46, name:"サワラ"}, {id:47, name:"サンマ"}, {id:48, name:"シイラ"},
    {id:49, name:"シログチ"}, {id:50, name:"シーバス"}, {id:51, name:"スギ"},
    {id:52, name:"ソイ"}, {id:53, name:"タイ"}, {id:54, name:"タカベ"},
    {id:55, name:"タコ"}, {id:56, name:"タチウオ"}, {id:57, name:"タナゴ"},
    {id:58, name:"タナバタウオ"}, {id:59, name:"タラ"}, {id:60, name:"ダツ"},
    {id:61, name:"ダンゴウオ"}, {id:62, name:"チョウチョウオ"}, {id:63, name:"ティラピア"},
    {id:64, name:"トビウオ"}, {id:65, name:"トラウト"}, {id:66, name:"ナマコ"},
    {id:67, name:"ナマズ"}, {id:68, name:"ニシン"}, {id:69, name:"ハゼ"},
    {id:70, name:"ハタ"}, {id:71, name:"ハタンポ"}, {id:72, name:"ハモ"},
    {id:73, name:"バラムツ"}, {id:74, name:"ヒイラギ"}, {id:75, name:"ヒメジ"},
    {id:76, name:"ヒラマサ"}, {id:77, name:"ヒラメ"}, {id:78, name:"フグ"},
    {id:79, name:"フリソデウオ"}, {id:80, name:"ブラックバス"}, {id:81, name:"ブリ"},
    {id:82, name:"ブルーギル"}, {id:83, name:"ベラ"}, {id:84, name:"ホウボウ"},
    {id:85, name:"ホッケ"}, {id:86, name:"ボラ"}, {id:87, name:"マカジカ"},
    {id:88, name:"マグロ"}, {id:89, name:"ムツ"}, {id:90, name:"メジナ"},
    {id:91, name:"メバル"}, {id:92, name:"ヤガラ"}, {id:93, name:"ユゴイ"},
    {id:94, name:"ヨウジウオ(タツノオトシゴ)"}, {id:95, name:"ライギョ"}, {id:96, name:"リュウグウノツカイ"},
    {id:97, name:"ワカサギ"},{id:98, name:"その他"}
  ]

  include ActiveHash::Associations
  has_many :posts
end
