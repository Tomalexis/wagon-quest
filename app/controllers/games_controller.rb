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

    render "games/status/#{@game.status}"
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
    end
    redirect_to game_path(@game)
  end
end
