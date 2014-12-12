class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.string :developer
      t.integer :year
      t.string :history
      t.string :gender
      t.boolean :accept
      t.string :avaliable
      t.integer :classication
      t.string :description
      t.boolean :multiplayer
      t.boolean :coop
      t.boolean :campaign
      t.string :legend
      t.string :dubbing
      t.string :requirements

      t.timestamps
    end
  end
end
