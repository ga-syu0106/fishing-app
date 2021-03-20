class Style < ActiveHash::Base
  self.data = [
    {id: 1, name: "川"}, {id: 2, name: "海"}, {id: 3, name: "船"},
  ]

  include ActiveHash::Associations
  has_many :users
end
