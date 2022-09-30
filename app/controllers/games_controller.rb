class GamesController < ApplicationController
  def create
    @user = current_user
    @user.username = params[:username].capitalize
    @user.save

    @game = Game.new
    @game.user = @user
    @game.status = 'intro'
    @game.cleared = false
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

      @teachers = Teacher.where(status: ["regular", "core_four", "final_boss", "secret_boss"])

      @teachers.each do |teacher|
        @teachers_per_position["#{teacher.position_x}-#{teacher.position_y}"] = teacher
      end

      @obstacle_positions = ['1-1', '2-1', '3-1', '4-1', '5-1', '6-1', '7-1', '8-1', '9-1',
                             '10-1', '11-1', '12-1', '13-1', '14-1', '15-1', '16-1', '17-1', '18-1', '19-1',
                             '20-1', '21-1', '22-1', '23-1', '24-1', '25-1', '26-1', '27-1', '28-1', '29-1',
                             '30-1', '31-1', '32-1', '33-1', '34-1', '35-1', '36-1', '37-1', '38-1', '39-1',
                             '40-1', '41-1', '42-1', '43-1', '44-1', '45-1', '46-1', '47-1', '48-1', '49-1',
                             '50-1', '51-1', '52-1', '53-1', '54-1',
                             '1-2', '2-2', '3-2', '4-2', '5-2', '6-2', '7-2', '8-2', '9-2',
                             '10-2', '11-2', '12-2', '13-2', '14-2', '15-2', '16-2', '17-2', '18-2', '19-2',
                             '20-2', '21-2', '22-2', '23-2', '24-2', '25-2', '26-2', '27-2', '28-2', '29-2',
                             '30-2', '31-2', '32-2', '33-2', '34-2', '35-2', '36-2', '37-2', '38-2', '39-2',
                             '40-2', '41-2', '42-2', '43-2', '44-2', '45-2', '46-2', '47-2', '48-2', '49-2',
                             '50-2', '51-2', '52-2', '53-2', '54-2',
                             '1-3', '2-3', '3-3', '4-3', '5-3', '6-3', '7-3', '8-3', '9-3',
                             '12-3', '13-3', '14-3', '15-3', '16-3', '17-3', '18-3', '19-3',
                             '20-3', '21-3', '22-3', '23-3', '24-3', '25-3', '26-3', '27-3',
                             '33-3', '34-3', '35-3', '36-3', '37-3', '38-3', '39-3',
                             '40-3', '41-3', '42-3', '43-3', '44-3', '45-3', '49-3',
                             '50-3', '54-3',
                             '1-4', '2-4', '3-4', '4-4', '5-4', '6-4', '7-4', '8-4', '9-4',
                             '12-4', '13-4', '14-4', '15-4', '16-4', '17-4', '18-4', '19-4',
                             '20-4', '21-4', '22-4', '23-4',
                             '33-4', '34-4', '35-4', '36-4', '37-4', '38-4', '39-4',
                             '40-4', '41-4', '42-4', '43-4', '44-4', '45-4',
                             '54-4',
                             '1-5', '2-5', '3-5', '4-5', '5-5', '6-5', '7-5', '8-5', '9-5',
                             '12-5', '13-5', '14-5', '15-5', '16-5', '17-5', '18-5', '19-5',
                             '20-5', '21-5', '22-5', '23-5',
                             '32-5', '33-5', '34-5', '35-5', '36-5', '37-5', '38-5', '39-5',
                             '40-5', '41-5', '42-5', '43-5', '44-5', '45-5',
                             '54-5',
                             '1-6', '2-6', '3-6', '4-6', '5-6', '6-6', '7-6', '8-6', '9-6',
                             '12-6', '13-6', '14-6', '15-6', '16-6', '17-6', '18-6', '19-6',
                             '20-6', '21-6', '22-6', '23-6',
                             '33-6', '34-6', '35-6', '36-6', '37-6', '38-6', '39-6',
                             '40-6', '41-6', '42-6', '43-6', '44-6', '45-6',
                             '54-6',
                             '54-7',
                             '1-8',
                             '54-8',
                             '1-9', '2-9', '3-9', '4-9', '5-9', '6-9', '7-9', '8-9', '9-9',
                             '12-9', '13-9', '14-9', '16-9', '17-9', '18-9',
                             '20-9', '21-9', '22-9', '23-9', '24-9',
                             '54-9',
                             '1-10', '2-10', '3-10', '4-10', '5-10', '6-10', '7-10', '8-10', '9-10',
                             '12-10', '13-10', '14-10', '15-10', '16-10', '17-10', '18-10', '19-10',
                             '20-10', '21-10', '22-10', '23-10', '24-10',
                             '54-10',
                             '12-11', '13-11', '14-11', '15-11', '16-11', '17-11', '18-11', '19-11',
                             '23-11', '24-11',
                             '33-11', '34-11', '35-11', '36-11', '37-11', '38-11', '39-11',
                             '40-11', '41-11', '42-11', '43-11', '44-11', '45-11',
                             '1-11', '2-11', '3-11', '4-11', '5-11', '6-11', '7-11', '8-11', '9-11',
                             '54-11',
                             '2-12', '3-12', '4-12', '5-12', '6-12', '7-12', '8-12', '9-12',
                             '12-12', '13-12', '14-12', '15-12', '16-12', '17-12', '18-12', '19-12',
                             '33-12', '34-12', '35-12', '36-12', '37-12', '38-12', '39-12',
                             '40-12', '41-12', '42-12', '43-12', '44-12', '45-12',
                             '54-12',
                             '32-13', '33-13', '34-13', '35-13', '36-13', '37-13', '38-13', '39-13',
                             '40-13', '41-13', '42-13', '43-13', '44-13', '45-13',
                             '54-13',
                             '16-14', '17-14', '18-14', '19-14',
                             '20-14', '21-14', '22-14', '23-14', '24-14', '25-14', '26-14', '27-14', '28-14', '29-14',
                             '30-14', '31-14', '32-14', '33-14', '34-14', '35-14', '36-14', '37-14', '38-14', '39-14',
                             '40-14', '41-14', '42-14', '43-14', '44-14', '45-14', '46-14', '47-14', '48-14', '49-14',
                             '50-14','53-14', '54-14',
                             '2-15', '3-15', '4-15', '5-15', '6-15', '8-15', '9-15',
                             '10-15', '11-15', '12-15', '13-15', '14-15', '15-15',
                             '25-15', '26-15', '29-15',
                             '30-15', '32-15', '33-15', '34-15', '35-15', '36-15', '38-15', '39-15',
                             '40-15', '41-15', '42-15', '43-15', '44-15', '45-15', '46-15', '47-15', '48-15', '49-15',
                             '50-15', '53-15', '54-15',
                             '2-16', '3-16', '4-16', '5-16', '6-16', '8-16', '9-16',
                             '10-16', '11-16', '12-16', '13-16', '14-16',
                             '26-16', '29-16',
                             '30-16', '35-16', '36-16',
                             '41-16', '42-16', '43-16', '44-16','47-16', '48-16', '49-16',
                             '50-16', '54-16',
                             '8-17', '9-17', '10-17', '11-17', '13-17',
                             '35-17', '36-17',
                             '42-17',
                             '54-17',
                             '8-18', '9-18', '10-18', '11-18', '35-18', '36-18',
                             '54-18',
                             '37-19',
                             '54-19',
                             '37-20',
                             '54-20',
                             '1-21', '2-21', '3-21', '4-21', '5-21', '6-21', '7-21', '8-21', '9-21',
                             '10-21', '11-21', '12-21', '13-21', '14-21',
                             '35-21', '36-21', '37-21', '38-21', '39-21',
                             '40-21', '41-21', '42-21', '43-21', '44-21', '45-21', '46-21', '47-21', '48-21', '49-21',
                             '50-21', '51-21', '52-21', '53-21', '54-21',
                             '13-22', '13-22', '14-22',
                             '31-22', '32-22', '35-22', '36-22', '37-22', '38-22', '39-22',
                             '40-22', '41-22', '42-22', '43-22', '44-22', '45-22', '46-22', '47-22', '48-22', '49-22',
                             '50-22', '51-22', '52-22', '53-22', '54-22',
                             '12-23',
                             '29-23',
                             '30-23', '31-23', '32-23',
                             '50-23', '51-23', '52-23', '53-23', '54-23',
                             '12-24',
                             '29-24',
                             '30-24', '31-24', '32-24',
                             '54-24',
                             '1-25', '2-25', '3-25', '4-25', '5-25', '6-25', '7-25', '8-25', '9-25',
                             '10-25', '11-25', '12-25', '13-25', '14-25', '18-25', '19-25',
                             '20-25', '21-25', '22-25', '23-25', '24-25', '25-25', '26-25', '27-25', '28-25', '29-25',
                             '30-25', '31-25', '32-25', '33-25', '34-25', '35-25', '36-25', '37-25', '38-25', '39-25',
                             '40-25', '41-25', '42-25', '43-25', '44-25', '45-25', '46-25', '47-25', '48-25', '49-25',
                             '50-25', '51-25', '52-25', '53-25', '54-25',
                             '1-26', '2-26', '3-26', '4-26', '5-26', '6-26', '7-26', '8-26', '9-26',
                             '10-26', '11-26', '12-26', '13-26', '14-26', '18-26', '19-26',
                             '20-26', '21-26', '22-26', '23-26', '24-26', '25-26', '26-26', '27-26', '28-26', '29-26',
                             '30-26', '31-26', '32-26', '33-26', '34-26', '35-26', '36-26', '37-26', '38-26', '39-26',
                             '40-26', '41-26', '42-26', '43-26', '44-26', '45-26', '46-26', '47-26', '48-26', '49-26',
                             '50-26', '51-26', '52-26', '53-26', '54-26',
                             '1-27', '2-27', '3-27', '4-27', '5-27', '6-27', '7-27', '8-27', '9-27',
                             '10-27', '11-27', '12-27', '13-27', '14-27', '18-27', '19-27',
                             '20-27', '21-27', '22-27', '23-27', '24-27', '25-27', '26-27', '27-27', '28-27', '29-27',
                             '30-27', '31-27', '32-27', '33-27', '34-27', '35-27', '36-27', '37-27', '38-27', '39-27',
                             '40-27', '41-27', '42-27', '43-27', '44-27', '45-27', '46-27', '47-27', '48-27', '49-27',
                             '50-27', '51-27', '52-27', '53-27', '54-27',
                             '1-28', '2-28', '3-28', '4-28', '5-28', '6-28', '7-28', '8-28', '9-28',
                             '10-28', '11-28', '12-28', '13-28', '14-28', '18-28', '19-28',
                             '20-28', '21-28', '22-28', '23-28', '24-28', '25-28', '26-28', '27-28', '28-28', '29-28',
                             '30-28', '31-28', '32-28', '33-28', '34-28', '35-28', '36-28', '37-28', '38-28', '39-28',
                             '40-28', '41-28', '42-28', '43-28', '44-28', '45-28', '46-28', '47-28', '48-28', '49-28',
                             '50-28', '51-28', '52-28', '53-28', '54-28',
                             '1-29', '2-29',
                             '12-29', '13-29', '14-29',
                             '21-29',
                             '43-29', '44-29', '45-29', '46-29',
                             '54-29',
                             '12-30',
                             '20-30', '21-30',
                             '54-30',
                             '1-31', '2-31', '3-31', '4-31', '5-31', '6-31', '7-31', '8-31', '9-31',
                             '10-31', '11-31', '12-31',
                             '20-31', '21-31', '22-31', '23-31', '24-31', '25-31', '26-31', '27-31', '28-31', '29-31',
                             '30-31', '31-31', '32-31', '33-31', '34-31', '35-31', '36-31', '37-31', '38-31', '39-31',
                             '40-31', '41-31', '42-31', '43-31', '44-31', '45-31', '46-31', '47-31', '48-31', '49-31',
                             '50-31', '51-31', '52-31', '53-31', '54-31',
                             '1-32', '2-32', '3-32', '4-32', '5-32', '6-32', '7-32', '8-32', '9-32',
                             '10-32', '11-32', '12-32',
                             '20-32', '21-32', '22-32', '23-32', '24-32', '25-32', '26-32', '27-32', '28-32', '29-32',
                             '30-32', '31-32', '32-32', '33-32', '34-32', '35-32', '36-32', '37-32', '38-32', '39-32',
                             '40-32', '41-32', '42-32', '43-32', '44-32', '45-32', '46-32', '47-32', '48-32', '49-32',
                             '50-32', '51-32', '52-32', '53-32', '54-32',
                             '1-33', '2-33', '3-33', '4-33', '5-33', '6-33', '7-33', '8-33', '9-33',
                             '10-33', '11-33', '12-33',
                             '20-33', '21-33', '22-33', '23-33', '24-33', '25-33', '26-33', '27-33', '28-33', '29-33',
                             '30-33', '31-33', '32-33', '33-33', '34-33', '35-33', '36-33', '37-33', '38-33', '39-33',
                             '40-33', '41-33', '42-33', '43-33', '44-33', '45-33', '46-33', '47-33', '48-33', '49-33',
                             '50-33', '51-33', '52-33', '53-33', '54-33',
                             '1-34', '2-34', '3-34', '4-34', '5-34', '6-34', '7-34', '8-34', '9-34',
                             '10-34', '11-34', '12-34',
                             '20-34', '21-34', '22-34', '23-34', '24-34', '25-34', '26-34', '27-34', '28-34', '29-34',
                             '30-34', '31-34', '32-34', '33-34', '34-34', '35-34', '36-34', '37-34', '38-34', '39-34',
                             '40-34', '41-34', '42-34', '43-34', '44-34', '45-34', '46-34', '47-34', '48-34', '49-34',
                             '50-34', '51-34', '52-34', '53-34', '54-34',
                             '45-35', '46-35', '47-35', '48-35', '49-35',
                             '50-35', '51-35', '52-35', '54-35',
                             '45-36', '46-36', '47-36', '48-36', '49-36',
                             '50-36', '51-36', '52-36', '54-36',
                             '54-37',
                             '54-38']
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

  def continue
    @game = current_user.games.find(params[:id])

    if @game.status == "intro"
      @game.update(status: "battle")
      teacher_status = ENV.fetch("TEACHER_STATUS_CHOSEN", "tutorial")

      teacher = Teacher.find_by(status: teacher_status)
      this_battle = Battle.create(
        game: @game,
        teacher: teacher,
        hp_user: teacher.lesson.hp_user,
        hp_teacher: teacher.lesson.hp_teacher,
        status: "battle_intro"
      )
    elsif @game.status == "battle" && @game.battles.last.status == "battle_intro"
      this_battle = @game.battles.last
      this_battle.update(status: "round_intro")
      if this_battle.teacher.status != "final_boss"
        @round = Round.create(
          battle: this_battle,
          question: this_battle.teacher.lesson.questions.sample
        )

      else

        debut_questions = []
        real_debut_questions = []
        final_questions = []
        real_final_questions = []
        other_questions = []
        real_other_questions = []
        rescue_questions = []
        real_rescue_questions = []

        @game.game_answers.joins(:answer).where(answers: { kind: ["weird", "misleading"] }).each do |e|
          if e.answer.question.lesson.name == "Setup terminal and Git"
            debut_questions << e.answer.question
          end
        end
        debut_questions.uniq.each do |q|
          if this_battle.question_ids.include?(q.id)
          else
            real_debut_questions << q
          end
        end
        real_debut_questions = real_debut_questions.uniq

        @game.game_answers.joins(:answer).where(answers: { kind: ["weird", "misleading"] }).each do |e|
          if e.answer.question.lesson.name == "Setup terminal and Git"
          elsif e.answer.question.lesson.name == "Savoir vivre rules"
          elsif e.answer.question.lesson.name == "Do or die"
          else
            final_questions << e.answer.question
          end
        end
        final_questions.uniq.each do |e|
          if this_battle.question_ids.include?(e.id)
          else
            real_final_questions << e
          end
        end
        real_final_questions = real_final_questions.uniq

        all_questions_asked = []
        all_questions = []
        @game.game_answers.each do |e|
          all_questions_asked << e.answer.question.id
        end
        Question.all.each do |q|
          if q.lesson.name == "Savoir vivre rules"
          elsif q.lesson.name == "Setup terminal and Git"
          elsif q.lesson.name == "Do or die"
          else
            all_questions << q
          end
        end
        all_questions.each do |e|
          if all_questions_asked.uniq.include?(e.id)
          else
            other_questions << e
          end
        end
        other_questions.each do |e|
          if this_battle.question_ids.include?(e.id)
          else
            real_other_questions << e
          end
        end
        real_other_questions = real_other_questions.uniq

        Question.all.each do |q|
          if q.lesson.name == "Savoir vivre rules"
          elsif q.lesson.name == "Setup terminal and Git"
          elsif q.lesson.name == "Do or die"
          else
            rescue_questions << q
          end
        end
        rescue_questions.each do |e|
          if this_battle.question_ids.include?(e.id)
          else
            real_rescue_questions << e
          end
        end
        real_rescue_questions = real_rescue_questions.uniq

        if real_debut_questions.empty? == false
          question_to_ask = real_debut_questions.sample
        elsif real_debut_questions.empty?
          if real_final_questions.empty? == false
            question_to_ask = real_final_questions.sample
          elsif real_final_questions.empty?
            if real_other_questions.empty? == false
              question_to_ask = real_other_questions.sample
            else
              question_to_ask = real_rescue_questions.sample
            end
          end
        end

        # final_questions = []
        # real_final_questions = []
        # other_questions = []
        # real_other_questions = []
        # rescue_questions = []
        # real_rescue_questions = []
        # @game.game_answers.joins(:answer).where(answers: { kind: ["weird", "misleading"] }).each do |e|
        #   # if e.answer.question.lesson.name == "Savoir vivre rules"
        #   # elsif e.answer.question.lesson.name == "Do or die"
        #   # else
        #   #   final_questions << e.answer.question
        #   # end
        #   if e.answer.question.lesson.name == "Setup terminal and Git"
        #     final_questions << e.answer.question
        #   else
        #   end
        # end
        # final_questions.each do |e|
        #   if this_battle.question_ids.include?(e.id)
        #   else
        #     real_final_questions << e
        #   end
        # end
        # if real_final_questions == []
        #   Question.all.each do |q|
        #     if q.lesson.name == "Savoir vivre rules"
        #     elsif q.lesson.name == "Setup terminal and Git"
        #     elsif q.lesson.name == "Do or die"
        #     else
        #       other_questions << q
        #     end
        #   end
        #   other_questions.each do |e|
        #     if this_battle.question_ids.include?(e.id)
        #     else
        #       real_other_questions << e
        #     end
        #   end
        #   if real_other_questions == []
        #     Question.all.each do |q|
        #       if q.lesson.name == "Savoir vivre rules"
        #       elsif q.lesson.name == "Setup terminal and Git"
        #       elsif q.lesson.name == "Do or die"
        #       else
        #         rescue_questions << q
        #       end
        #     end
        #     rescue_questions.each do |e|
        #       if this_battle.question_ids.include?(e.id)
        #       else
        #         real_rescue_questions << e
        #       end
        #     end
        #     question_to_ask = real_rescue_questions.sample
        #   end
        #   question_to_ask = real_other_questions.sample
        # else
        #   question_to_ask = real_final_questions.sample
        # end

        @round = Round.create(
          battle: this_battle,
          question: question_to_ask
        )
      end

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
      if this_battle.teacher.status != "final_boss"
        question_to_ask = this_battle.teacher.lesson.questions.where.not(id: this_battle.question_ids).sample
      else

        debut_questions = []
        real_debut_questions = []
        final_questions = []
        real_final_questions = []
        other_questions = []
        real_other_questions = []
        rescue_questions = []
        real_rescue_questions = []

        @game.game_answers.joins(:answer).where(answers: { kind: ["weird", "misleading"] }).each do |e|
          if e.answer.question.lesson.name == "Setup terminal and Git"
            debut_questions << e.answer.question
          end
        end
        debut_questions.uniq.each do |q|
          if this_battle.question_ids.include?(q.id)
          else
            real_debut_questions << q
          end
        end
        real_debut_questions = real_debut_questions.uniq

        @game.game_answers.joins(:answer).where(answers: { kind: ["weird", "misleading"] }).each do |e|
          if e.answer.question.lesson.name == "Setup terminal and Git"
          elsif e.answer.question.lesson.name == "Savoir vivre rules"
          elsif e.answer.question.lesson.name == "Do or die"
          else
            final_questions << e.answer.question
          end
        end
        final_questions.uniq.each do |e|
          if this_battle.question_ids.include?(e.id)
          else
            real_final_questions << e
          end
        end
        real_final_questions = real_final_questions.uniq

        all_questions_asked = []
        all_questions = []
        @game.game_answers.each do |e|
          all_questions_asked << e.answer.question.id
        end
        Question.all.each do |q|
          if q.lesson.name == "Savoir vivre rules"
          elsif q.lesson.name == "Setup terminal and Git"
          elsif q.lesson.name == "Do or die"
          else
            all_questions << q
          end
        end
        all_questions.each do |e|
          if all_questions_asked.uniq.include?(e.id)
          else
            other_questions << e
          end
        end
        other_questions.each do |e|
          if this_battle.question_ids.include?(e.id)
          else
            real_other_questions << e
          end
        end
        real_other_questions = real_other_questions.uniq

        Question.all.each do |q|
          if q.lesson.name == "Savoir vivre rules"
          elsif q.lesson.name == "Setup terminal and Git"
          elsif q.lesson.name == "Do or die"
          else
            rescue_questions << q
          end
        end
        rescue_questions.each do |e|
          if this_battle.question_ids.include?(e.id)
          else
            real_rescue_questions << e
          end
        end
        real_rescue_questions = real_rescue_questions.uniq

        if real_debut_questions.empty? == false
          question_to_ask = real_debut_questions.sample
        elsif real_debut_questions.empty?
          if real_final_questions.empty? == false
            question_to_ask = real_final_questions.sample
          elsif real_final_questions.empty?
            if real_other_questions.empty? == false
              question_to_ask = real_other_questions.sample
            else
              question_to_ask = real_rescue_questions.sample
            end
          end
        end

      end

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
        teacher = this_battle.teacher
        if this_battle.teacher.status == "final_boss"
          @game.update(status: "map")
        elsif this_battle.teacher.status == "secret_boss"
          @game.update(status: "map")
        else
        this_battle = Battle.create(
          game: @game,
          teacher: teacher,
          hp_user: teacher.lesson.hp_user,
          hp_teacher: teacher.lesson.hp_teacher,
          status: "battle_intro"
        )
        end
      elsif this_battle.hp_teacher <= 0
        if this_battle.teacher.status == "tutorial"
          @game.update(status: "map", user_position_x: 48, user_position_y: 37)
        elsif this_battle.teacher.status == "final_boss"
          @game.update(cleared: true)
          @game.update(status: "clear")
        else
          @game.update(status: "map")
        end
      end
    elsif @game.status == "clear"
      @game.update(status: "map")
    end

    respond_to do |format|
      format.html { redirect_to game_path(@game) }

      format.json do
        round = this_battle.rounds.last

        if round
          game_answer = round.game_answers.last
        end

        render json: {
          battle: render_to_string(
            "battles/status/#{this_battle.status}",
            locals: {
              :@battle => this_battle,
              :@round => round,
              :@game_answer => game_answer
            },
            layout: false, formats: [:html]
          )
        }
      end
    end
  end
end
