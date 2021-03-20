class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :image

   validates :nickname, presence: true
   validates :gender,   presence: true
   validates :age, numericality: {only_integer: true , message:"年齢は半角数字で入力してください"}, allow_nil: true
   validates :history, numericality: {only_integer: true , message:"釣り歴は半角数字で入力してください"}, allow_nil: true
end
