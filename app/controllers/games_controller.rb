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
    @game = Game.find(params[:id])

    if @game.status == "map"
      @teachers_per_position = {}

      @teachers = Teacher.where.not(position_x: 0, position_y: 0)

      @teachers.each do |teacher|
        @teachers_per_position["#{teacher.position_x}-#{teacher.position_y}"] = teacher
      end
    end

    render "games/status/#{@game.status}"
  end
end
