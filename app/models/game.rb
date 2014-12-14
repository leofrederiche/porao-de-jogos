class Game < ActiveRecord::Base

  validates_uniqueness_of :name, :history
  validates_presence_of :name, :history, :gender, :game_picture

  has_many :reviews, class_name: Review, foreign_key: :id_game
  has_many :quests, class_name: Quest, foreign_key: :id_game

  has_attached_file :game_picture, :styles => { :medium => "300x300>", :thumb => "100x100>", :background => "1200x900>" }, :default_url => "logo.png"
  validates_attachment_content_type :game_picture, :content_type => /\Aimage\/.*\Z/

  def score
    reviews.inject(0) {|sum, review| sum + review[:note]}
  end 

  def info
    # "criado por: #{developer}"
    "#{developer} - #{gender} - #{score} pontos"
    
  end

end
