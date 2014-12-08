class CreateMyGames < ActiveRecord::Migration
  def change
    create_table :my_games do |t|
      t.integer :id_user
      t.integer :id_game
      t.string :review
      t.integer :note

      t.timestamps
    end
  end
end
