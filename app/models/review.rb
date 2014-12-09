class Review < ActiveRecord::Base

  validates_uniqueness_of :id_user, scope: :id_game

end
