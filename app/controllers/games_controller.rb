class GamesController < ApplicationController
  def index 
    @series = Series.all.order(:name)
    @games = Game.all.order(:name)
    @developer = Developer.all.order(:name)
  end
  def show 
    @game = Game.find_by(name: params[:name])
  end
end
