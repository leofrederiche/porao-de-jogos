class User < ActiveRecord::Base

  has_secure_password

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "logo.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  validates_uniqueness_of :email

  has_many :games, class_name: MyGames, foreign_key: :id_user
end
