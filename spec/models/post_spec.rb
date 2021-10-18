require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
    @post = FactoryBot.build(:post)
  end

  describe '釣果新規登録' do
    context '釣果登録ができる場合' do

      it 'すべてが正しく入力してあれば登録できること' do
        @post.valid?
        expect(@post).to be_valid
      end

      it '場所(名称)が空でも登録できること' do
        @post.spot = ''
        expect(@post).to be_valid
      end

      it 'MAP住所が空でも登録できること' do
        @post.latitude = ''
        @post.longitude = ''
        expect(@post).to be_valid
      end

      it '魚名が空でも登録できること' do
        @post.fish_name = ''
        expect(@post).to be_valid
      end

      it 'ロッド名が空でも登録できること' do
        @post.rod = ''
        expect(@post).to be_valid
      end

      it 'リールが空でも登録できること' do
        @post.reel = ''
        expect(@post).to be_valid
      end

      it 'ラインが空でも登録できること' do
        @post.line= ''
        expect(@post).to be_valid
      end

      it '説明が空でも登録できること' do
        @post.explanation = ''
        expect(@post).to be_valid
      end

      it '写真が空でも登録できること' do
        @post.fish_image = ''
        expect(@post).to be_valid
      end

    end

    context '釣果登録ができない場合' do
      it '日付が空だと登録できないこと' do
        @post.fishing_date = ''
        @post.valid?
        expect(@post.errors.full_messages).to include("釣った日を入力してください")
      end

      it '時間が空だと登録できないこと' do
        @post.fishing_time = ''
        @post.valid?
        expect(@post.errors.full_messages).to include("釣った時間を入力してください")
      end

      it '地域が空だと登録できないこと' do
        @post.municipality_id = ''
        @post.valid?
        expect(@post.errors.full_messages).to include("釣った地域(市町村)を入力してください")
      end

      it '天候が空だと登録できないこと' do
        @post.weather_id = ''
        @post.valid?
        expect(@post.errors.full_messages).to include("天候を入力してください")
      end

      it '仕掛けが空だと登録できないこと' do
        @post.gimmick = ''
        @post.valid?
        expect(@post.errors.full_messages).to include("仕掛けを入力してください")
      end

      it 'ユーザーが紐づいていないと登録できないこと' do
        @post.user = nil
        @post.valid?
        expect(@post.errors.full_messages).to include("Userを入力してください")
      end

    end

  end
end
