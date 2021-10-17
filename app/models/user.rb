class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze
  validates :password, format: { with: PASSWORD_REGEX, message: '半角英数字のみで両方使用してください' }
  validates :nickname, presence: true, length: {maximum: 6}
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
