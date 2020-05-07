class Game < ApplicationRecord
  belongs_to :user
  has_many :game_players, dependent: :destroy
  has_many :players, through: :game_players
  validates :opponent, :place, :result, :goal, :allow, :date,presence: true
  accepts_nested_attributes_for :game_players, allow_destroy: true
 
  def self.search(search)
    if search
      Game.where(['opponent LIKE ? OR result LIKE ? OR place LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%"])
    else
      Game.all
    end
  end
end
