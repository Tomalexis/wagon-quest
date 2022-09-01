class GamesController < ApplicationController
  def create
    @user = current_user
    @user.username = params[:username]
    @user.save

    @game = Game.new
    @game.user = @user
    @game.status = 'intro'
    @game.user_position_x = 9
    @game.user_position_y = 6
    @game.save
    redirect_to game_path(@game)
  end

  def show
    @game = Game.find(params[:id])

    if @game.status == "map"
      @teachers_per_position = {}

      @teachers = Teacher.where(tutorial: false)

      @teachers.each do |teacher|
        @teachers_per_position["#{teacher.position_x}-#{teacher.position_y}"] = teacher
      end

    elsif @game.status == "intro"

      @user = current_user

      @user_position = "#{@game.user_position_x}-#{@game.user_position_y}"

      @slackbot = Teacher.find_by(tutorial: true)
      @slackbot_position = "#{@slackbot.position_x}-#{@slackbot.position_y}"
    end

    render "games/status/#{@game.status}"
  end
end
