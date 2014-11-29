class AddAttachmentGamePictureToGames < ActiveRecord::Migration
  def self.up
    change_table :games do |t|
      t.attachment :game_picture
    end
  end

  def self.down
    remove_attachment :games, :game_picture
  end
end
