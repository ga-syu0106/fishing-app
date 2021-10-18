require 'rails_helper'

RSpec.describe Comment, type: :model do
  before do
    @comment = FactoryBot.build(:comment)
  end

  describe 'コメント投稿機能' do

    context 'コメント投稿ができる場合' do
      it '全てが正しく入力してあれば投稿できること' do
        @comment.valid?
        expect(@comment).to be_valid
      end
    end

    context 'コメント投稿が出来ない場合' do
      it 'コメント内容が空のだと投稿できないこと' do
        @comment.text = ''
        @comment.valid?
        expect(@comment.errors.full_messages).to include("Textを入力してください")
      end

      it 'ユーザーが紐づいてないと投稿できないこと' do
        @comment.user = nil
        @comment.valid?
        expect(@comment.errors.full_messages).to include("Userを入力してください")
      end

      it '投稿が紐づいてないと投稿できないこと' do
        @comment.post = nil
        @comment.valid?
        expect(@comment.errors.full_messages).to include("Postを入力してください")
      end
    end

  end
end
