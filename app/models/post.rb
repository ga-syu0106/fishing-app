class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_one_attached :fish_image

  with_options presence: true do
    validates :fishing_date
    validates :fishing_time
    validates :municipality_id
    validates :weather_id
    validates :fish_kind_id
    validates :gimmick
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :fish_kind
  belongs_to :municipality
  belongs_to :weather
end
