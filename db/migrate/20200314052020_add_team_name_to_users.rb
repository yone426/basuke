class AddTeamNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :team_name, :string
  end
end
