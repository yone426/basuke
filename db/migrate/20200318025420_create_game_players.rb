class CreateGamePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :game_players do |t|
      t.references :game, foreign_key: true, null: false
      t.references :player, foreign_key: true, null: false
      t.integer :score, null: false
      t.timestamps
    end
  end
end
