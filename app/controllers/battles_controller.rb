class BattlesController < ApplicationController
  def create
    # {"authenticity_token"=>"[FILTERED]", "user_position_x"=>"9", "user_position_y"=>"10", "commit"=>"Go", "game_id"=>"111"}
    # Trouver le game par rapport au game id dans les params
    @game = Game.find(params[:game_id])
    # Mettre à jour les positions du user dans le game
    # Changer le status du game en "battle"
    @game.update(
      user_position_x: params[:user_position_x],
      user_position_y: params[:user_position_y],
      status: "battle"
    )
    # Trouver le teacher par rapport à la position du user (4 cases au tour)
    position_left_x = (params[:user_position_x].to_i - 1).to_s
    position_left_y = (params[:user_position_y])

    position_right_x = (params[:user_position_x].to_i + 1).to_s
    position_right_y = (params[:user_position_y])

    position_up_x = (params[:user_position_x]).to_i
    position_up_y = (params[:user_position_y].to_i - 1).to_s

    position_down_x = (params[:user_position_x]).to_i
    position_down_y = (params[:user_position_y].to_i + 1).to_s

    sql = "(position_x = ? AND position_y = ?) OR " \
      "(position_x = ? AND position_y = ?) OR " \
      "(position_x = ? AND position_y = ?) OR " \
      "(position_x = ? AND position_y = ?)"

    @teacher = Teacher.find_by(
      sql,
      position_left_x, position_left_y,
      position_right_x, position_right_y,
      position_up_x, position_up_y,
      position_down_x, position_down_y
    )
    # Créer la battle comme dans le continue du GamesController
    Battle.create(
      game: @game,
      teacher: @teacher,
      hp_user: @teacher.lesson.hp_user,
      hp_teacher: @teacher.lesson.hp_teacher,
      status: "battle_intro"
    )
    # Rediriger sur la show du game
    redirect_to game_path(@game), status: :see_other

    # Sur map.html.erb, remplacer Go par le style du bouton continue
  end
end
