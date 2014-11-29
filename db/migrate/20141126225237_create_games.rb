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

      t.timestamps
    end
  end
end
