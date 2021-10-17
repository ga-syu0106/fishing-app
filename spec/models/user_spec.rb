require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context 'ユーザー投稿ができる場合' do

      it 'すべてが正しく入力してあれば登録できること' do
        expect(@user).to be_valid
      end

      it '所在地が空でも登録できること' do
        @user.municipality_id = ''
        expect(@user).to be_valid
      end

      it '年齢が空でも登録できること' do
        @user.age = ''
        expect(@user).to be_valid
      end

      it '釣り歴が空でも登録できること' do
        @user.history = ''
        expect(@user).to be_valid
      end

      it '主な釣り場所が空でも登録できること' do
        @user.style_id = ''
        expect(@user).to be_valid
      end
      
      it '自己紹介が空でも登録できること' do
        @user.profile = ''
        expect(@user).to be_valid
      end
    end

    context 'ユーザー登録ができない場合' do

      it 'メールアドレスが空では登録できないこと' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("メールアドレスを入力してください")
      end

      it '重複したメールアドレスが存在する場合、登録できないこと' do
        @user.save
        user1 = FactoryBot.build(:user, email: @user.email)
        user1.valid?
        expect(user1.errors.full_messages).to include("メールアドレスはすでに存在します")
      end

      it 'メールアドレスは@を含まないと登録できないこと' do
        @user.email = 'user1'
        @user.valid?
        expect(@user.errors.full_messages).to include("メールアドレスは不正な値です")
      end

      it 'メールアドレスは@の後に文字を含まないと登録できなこと' do
        @user.email = 'user1@'
        @user.valid?
        expect(@user.errors.full_messages).to include("メールアドレスは不正な値です")
      end

      it 'パスワードが空では登録できないこと' do
        @user.password = ''
        @user.password_confirmation = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードを入力してください")
      end

      it 'パスワードは６文字以上での入力でないと登録できないこと' do
        @user.password = 'user1'
        @user.password_confirmation = 'user1'
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードは6文字以上で入力してください")
      end

      it 'パスワードは、半角英数字混合での入力でないと登録できないこと(半角英語のみ)' do
        @user.password = 'useruser'
        @user.password_confirmation = 'useruser'
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードは半角英数字のみで両方使用してください")
      end

      it 'パスワードは、半角英数字混合での入力でないと登録できないこと(半角数字のみ)' do
        @user.password = '111111'
        @user.password_confirmation = '111111'
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードは半角英数字のみで両方使用してください")
      end

      it 'パスワードは、確認用を含めて2回入力しないと登録できないこと' do
        @user.password_confirmation = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワード（確認用）とパスワードの入力が一致しません")
      end

      it 'パスワードとパスワード（確認用）、値の一致しないと登録できないこと' do
        @user.password_confirmation = 'user123'
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワード（確認用）とパスワードの入力が一致しません")
      end

      it '名前が空だと登録できないこと' do
        @user.nickname = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("ニックネームを入力してください")
      end

      it '名前が7文字以上だと登録できないこと' do
        @user.nickname = 'あいうえおかき'
        @user.valid?
        expect(@user.errors.full_messages).to include("ニックネームは6文字以内で入力してください")

      end

      it '性別が空だと登録できないこと' do
        @user.gender = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("性別を入力してください")
      end

    end
  end

end