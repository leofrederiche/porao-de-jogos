class WelcomeController  < ApplicationController

  def index
    @games = Game.all.to_a
  end

end