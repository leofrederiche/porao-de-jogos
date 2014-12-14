class CreateQuests < ActiveRecord::Migration
  def change
    create_table :quests do |t|
      t.string :name
      t.string :objective
      t.string :reward
      t.integer :id_game
      t.string :requirements

      t.timestamps
    end
  end
end
