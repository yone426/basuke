class Player < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_many :game_players
  has_many :games, through: :game_players
end
