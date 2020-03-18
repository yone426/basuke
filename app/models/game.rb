class Game < ApplicationRecord
  belongs_to :user
  has_many :game_players, dependent: :destroy
  has_many :players, through: :game_players

  accepts_nested_attributes_for :game_players, allow_destroy: true
  
  def self.search(search)
    if search
      Game.where('opponent LIKE(?)', "%#{search}%")
    else
      Game.all
    end
  end

end
