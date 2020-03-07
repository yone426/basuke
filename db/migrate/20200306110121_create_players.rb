class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :position, null: false
      t.string :name, null: false
      t.integer :uniform_number, null: false
      t.integer :point
      t.timestamps
    end
  end
end
