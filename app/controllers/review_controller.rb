class ReviewController < ApplicationController

  def create
    @game = Game.find_by_name params[:name]
    @review = Review.create(games_params)
    @review.id_user = current_user.id
    @review.id_game = @game.id

    if @review.save
      redirect_to show_game_path(@game.name)
    else
      redirect_to show_game_path(@game.name)
    end

  end

  private
  def games_params
    params.require(:review).permit(
      :id_user,
      :id_game,
      :review,
      :note
    )
  end

end