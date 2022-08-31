class GamesController < ApplicationController

  def show
    @teachers_per_position = {}

    @teachers = Teacher.where.not(position_x: 0, position_y: 0)

    @teachers.each do |teacher|
      @teachers_per_position["#{teacher.position_x}-#{teacher.position_y}"] = teacher
    end
  end
end
