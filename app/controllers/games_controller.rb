class GamesController < ApplicationController

  def index
    @games = Game.all
    @search_game = Game.where("name LIKE '%#{params[:search]}%'") if params[:search]
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
    @review = Review.new
    @reviews = @game.reviews

    @value = 0
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