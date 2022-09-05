class GamesController < ApplicationController
  def create
    @user = current_user
    @user.username = params[:username].capitalize!
    @user.save

    @game = Game.new
    @game.user = @user
    @game.status = 'intro'
    @game.user_position_x = 9
    @game.user_position_y = 6
    @game.save

    if @user.valid?
      redirect_to game_path(@game)
    else
      render "pages/home"
    end
  end

  def show
    @game = current_user.games.find(params[:id])

    if @game.status == "map"
      @user_position = "#{@game.user_position_x}-#{@game.user_position_y}"

      @teachers_per_position = {}

      @teachers = Teacher.where(tutorial: false)

      @teachers.each do |teacher|
        @teachers_per_position["#{teacher.position_x}-#{teacher.position_y}"] = teacher
      end

      @obstacle_positions = []
      @obstacle_positions += @teachers_per_position.keys

    elsif @game.status == "intro"

      @user = current_user
      @user_position = "#{@game.user_position_x}-#{@game.user_position_y}"

      @slackbot = Teacher.find_by(tutorial: true)
      @slackbot_position = "#{@slackbot.position_x}-#{@slackbot.position_y}"

      @obstacle_positions = ['10-2', '7-4', '7-5', '1-2', '2-2', '3-2', '4-2', '1-6', '2-6', '1-8', '2-8']
      @obstacle_positions << @slackbot_position
    end

    if @game.status == "battle"
      @battle = @game.battles.last
      @round = @battle.rounds.last

      if @round
        @game_answer = @round.game_answers.last
      end

      render "battles/status/#{@battle.status}"
    else
      render "games/status/#{@game.status}"
    end
  end

  def continue
    @game = current_user.games.find(params[:id])

    if @game.status == "intro"
      @game.update(status: "battle")
      teacher = Teacher.find_by(tutorial: true)
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
      #### C'EST LA QUE SERA LE CODE DE COMBAT. (début)
      # if answer.kind == "correct" || answer.kind == "perfect"
        # this_battle.hp_teacher -= 2
        # this_battle.update(status: "round_outro")
      # elsif answer.kind == "weird" || answer.kind == "misleading"
        # this_battle.hp_user -= 2
      #### C'EST LA QUE SERA LE CODE DE COMBAT. Ou pas. (fin)
      this_battle.update(status: "round_outro")
    elsif @game.status == "battle" && @game.battles.last.status == "round_outro"
      this_battle = @game.battles.last
      this_round = this_battle.rounds.last
      this_answer = this_round.game_answers.last.answer
      question_to_ask = this_battle.teacher.lesson.questions.where.not(id: this_battle.question_ids).sample
      if this_answer.kind == "weird" || this_answer.kind == "misleading"
        this_battle.update(status: "round_core")
      elsif question_to_ask
        @round = Round.create(
          battle: this_battle,
          question: question_to_ask
          # Pour l'instant je vais rester sur sample.
        )
        this_battle.update(status: "round_intro")
      else
        this_battle.update(status: "battle_outro")
      end
      # No battle_outro yet, still in the loop until the whole system is done.
    elsif @game.status == "battle" && @game.battles.last.status == "battle_outro"
      this_battle = @game.battles.last
      if this_battle.hp_user <= 0
        teacher = Teacher.find_by(tutorial: true)
        battle = Battle.create(
          game: @game,
          teacher: teacher,
          hp_user: teacher.lesson.hp_user,
          hp_teacher: teacher.lesson.hp_teacher,
          status: "battle_intro"
        )
      elsif this_battle.hp_teacher <= 0
        @game.update(status: "map")
      end
    end
    redirect_to game_path(@game)
  end
end
