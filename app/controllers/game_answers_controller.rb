class GameAnswersController < ApplicationController
  def create
    @round = current_user.rounds.find(params[:round_id])
    if @round.battle.teacher.status == "secret_boss"
      if @round.question.answers.find_by(content: params[:secret_boss][:content])
        @answer = @round.question.answers.find_by(content: params[:secret_boss][:content])
      else
        @answer = @round.question.answers.find_by(kind: "weird")
      end
    else
      # {"game_answer"=>{"answer_id"=>"114"}, "round_id"=>"57"}
      # récupérer le round depuis les params .find
      ## @round = current_user.rounds.find(params[:round_id])
      # récupérer l'answer depuis les params (nestées)
      @answer = @round.question.answers.find(params[:game_answer][:answer_id])
    end
      # créer un game_answer connecté au round et à l'answer
      GameAnswer.create(
        game: @round.battle.game,
        round: @round,
        answer: @answer
      )
      # récupérer la battle à partir de round
      @battle = @round.battle
      # mettre à jour les HP user ou teacher dépendamment du kind de l'answer
      if @answer.kind == "correct" || @answer.kind == "perfect"
        @battle.hp_teacher -= 2
      elsif @answer.kind == "weird" || @answer.kind == "misleading"
        @battle.hp_user -= 2
      end
      # mettre à jour battle status to round_outro
      @battle.update(status: "round_outro")
      # récupérer le game à partir de la battle
      @game = @battle.game
      # rediriger toujours vers la show du game
      redirect_to game_path(@game), status: :see_other
  end
end
