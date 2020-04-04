class Player < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_many :game_players
  has_many :games, through: :game_players
  validates :position, :name, :uniform_number, :image ,presence: true
end
