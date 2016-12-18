class HorsesController < ApplicationController
  def index
    @horses = Horse.all
  end

  def show
    @horse = Horse.find(params[:id])
  end
end
