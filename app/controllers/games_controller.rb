class GamesController < ApplicationController
  def create
    @user = current_user
    @user.username = params[:username].capitalize
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
      render "pages/home", status: :unprocessable_entity
    end
  end

  def show
    @game = current_user.games.find(params[:id])

    if @game.status == "map"

      @user = current_user
      @user_position = "#{@game.user_position_x}-#{@game.user_position_y}"

      @teachers_per_position = {}

      @teachers = Teacher.where(status: ["regular", "final_boss"])

      @teachers.each do |teacher|
        @teachers_per_position["#{teacher.position_x}-#{teacher.position_y}"] = teacher
      end

      @obstacle_positions = ['7-8', '8-8', '13-8', '15-8', '18-8', '21-8', '22-8', '23-8', '24-8', '25-8',
                             '18-9',
                             '7-11', '18-11',
                             '15-12', '16-12',
                             '1-13', '2-13', '3-13', '4-13', '5-13', '6-13', '7-13', '10-13', '11-13', '12-13', '13-13',
                             '14-13', '15-13', '16-13', '17-13', '18-13', '19-13', '20-13', '21-13', '22-13', '23-13',
                             '24-13', '25-13', '26-13', '27-13',
                             '1-14', '2-14', '3-14', '4-14', '5-14', '6-14', '7-14', '10-14', '11-14', '12-14', '13-14',
                             '14-14', '15-14', '16-14', '17-14', '18-14', '19-14', '20-14', '21-14', '22-14', '23-14',
                             '24-14', '25-14', '26-14', '27-14']
      @obstacle_positions += @teachers_per_position.keys

    elsif @game.status == "intro"

      @user = current_user
      @user_position = "#{@game.user_position_x}-#{@game.user_position_y}"

      @slackbot = Teacher.find_by(status: "tutorial")
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

  def continue # for secret_boss
    @game = current_user.games.find(params[:id])

    if @game.status == "intro"
      @game.update(status: "battle")
      teacher_status = ENV.fetch("TEACHER_STATUS_CHOSEN", "tutorial")

      teacher = Teacher.find_by(status: teacher_status)
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
      )
    elsif @game.status == "battle" && @game.battles.last.status == "round_intro"
      this_battle = @game.battles.last
      this_battle.update(status: "round_core")
    elsif @game.status == "battle" && @game.battles.last.status == "round_core"
      this_battle = @game.battles.last
      this_battle.update(status: "round_outro")
    elsif @game.status == "battle" && @game.battles.last.status == "round_outro"
      this_battle = @game.battles.last
      this_round = this_battle.rounds.last
      this_answer = this_round.game_answers.last.answer
      question_to_ask = this_battle.teacher.lesson.questions.where.not(id: this_battle.question_ids).sample

      if this_battle.hp_user <= 0 || this_battle.hp_teacher <= 0
        this_battle.update(status: "battle_outro")
      elsif this_answer.kind == "weird" || this_answer.kind == "misleading"
        this_battle.update(status: "round_core")
      elsif question_to_ask
        @round = Round.create(
          battle: this_battle,
          question: question_to_ask
        )
        this_battle.update(status: "round_intro")
      else
        this_battle.update(status: "battle_outro")
      end
    elsif @game.status == "battle" && @game.battles.last.status == "battle_outro"
      this_battle = @game.battles.last
      if this_battle.hp_user <= 0
        # teacher = Teacher.find_by(status: "secret_boss")
        teacher = this_battle.teacher
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
    redirect_to game_path(@game), status: :see_other
  end
end
