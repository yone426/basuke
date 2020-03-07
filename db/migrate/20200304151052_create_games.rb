class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :opponent, null: false
      t.string :place, null: false
      t.string :result, default: "", null: false
      t.integer :goal
      t.integer :allow
      t.date :date, null: false

      t.timestamps
    end
  end
end
