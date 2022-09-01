class GamesController < ApplicationController
  def create
    @user = current_user
    @user.username = params[:username]
    @user.save

    @game = Game.new
    @game.user = @user
    @game.status = 'intro'
    @game.user_position_x = 0
    @game.user_position_y = 0
    @game.save
    redirect_to game_path(@game)
  end

  def show
    @game = current_user.games.find(params[:id])

    if @game.status == "map"
      @teachers_per_position = {}

      @teachers = Teacher.where.not(position_x: 0, position_y: 0)

      @teachers.each do |teacher|
        @teachers_per_position["#{teacher.position_x}-#{teacher.position_y}"] = teacher
      end
    end

    if @game.status == "battle"
      battle = @game.battles.last
      render "battles/status/#{battle.status}"
    else
      render "games/status/#{@game.status}"
    end
  end

  def continue
    @game = current_user.games.find(params[:id])

    if @game.status == "intro"
      @game.update(status: "battle")
      teacher = Teacher.find_by(position_x: 0, position_y: 0)
      battle = Battle.create(
        game: @game,
        teacher: teacher,
        hp_user: teacher.lesson.hp_user,
        hp_teacher: teacher.lesson.hp_teacher,
        status: "battle_intro"
      )
    elsif @game.status == "battle" && @game.battles.last.status == "battle_intro"
      this_battle = @game.battles.last
      this_battle.update(status: "round_intro")
      @round = Round.create(
        battle: this_battle,
        question: this_battle.teacher.lesson.questions.sample
        # Pour l'instant je vais rester sur sample.
      )
      # game status battle && battle status battle_intro
      # -> battle status round_intro
      # créer le round avec tous ses paramètres
      # pour question, doit être random, mais pas déjà sélectionnée pour cette battle
    elsif @game.status == "battle" && @game.battles.last.status == "round_intro"
      this_battle = @game.battles.last
      this_battle.update(status: "round_core")
    elsif @game.status == "battle" && @game.battles.last.status == "round_core"
      this_battle = @game.battles.last
      this_battle.update(status: "round_outro")
    elsif @game.status == "battle" && @game.battles.last.status == "round_outro"
      this_battle = @game.battles.last
      this_battle.update(status: "round_intro")
      @round = Round.create(
        battle: this_battle,
        question: this_battle.teacher.lesson.questions.sample
        # Pour l'instant je vais rester sur sample.
      )
      # No battle_outro yet, still in the loop until the whole system is done.
    end
    redirect_to game_path(@game)

  end
end
