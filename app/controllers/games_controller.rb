class GamesController < ApplicationController

  def index
    @games = Game.all
  end

  def new
    @new_game = Game.new
  end

  def create
    @new_game = Game.create(games_params)

    if @new_game.save 
      redirect_to games_path
    else
      render :new
    end
  end

  def show
    @game = Game.find_by_name(params[:name])
  end


  private
  def games_params
    params.require(:game).permit(
      :name, 
      :developer,
      :year,
      :history,
      :gender,
      :accept,
      :avaliable,
      :game_picture
    )
  end

end