class Game < ApplicationRecord
  belongs_to :user

  def self.search(search)
    if search
      Game.where('opponent LIKE(?)', "%#{search}%")
    else
      Game.all
    end
  end

end
