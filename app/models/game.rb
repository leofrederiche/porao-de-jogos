class Game < ActiveRecord::Base

  validates_uniqueness_of :name, :history
  validates_presence_of :name, :history, :gender

  has_attached_file :game_picture, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "logo.png"
  validates_attachment_content_type :game_picture, :content_type => /\Aimage\/.*\Z/

end
