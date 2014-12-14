class QuestsController <  ApplicationController

  def index
    @game = Game.find params[:id]
    @quests = @game.quests
  end

  def new
    @new_quest = Quest.new
  end

  def create
    @game = Game.find params[:id]
    @new_quest = Quest.create(quest_params)
    @new_quest.id_game = @game.id

    if @new_quest.save
      flash[:notice] = "Quest criada com sucesso!"
      redirect_to quests_path(@game.id)
    else
      flash[:notice] = "Ops, ouve algum erro, verifique se a missão ja existe."
      redirect_to quests_path(@game.id)
    end

  end

  private
  def quest_params
    params.require(:quest).permit(
      :name,
      :id_game,
      :objective,
      :requirements,
      :reward
    )
  end

end