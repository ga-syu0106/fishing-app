class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true
  validates :gender,   presence: true
  validates :age, numericality: { only_integer: true, message: '年齢は半角数字で入力してください' }, allow_nil: true
  validates :history, numericality: { only_integer: true, message: '釣り歴は半角数字で入力してください' }, allow_nil: true

  has_many :posts
  has_many :comments
  has_one_attached :user_image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :style
  belongs_to :municipality
end
