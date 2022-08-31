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
    render "games/status/#{@game.status}"
  end
end
