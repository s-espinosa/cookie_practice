class HorsesController < ApplicationController
  def index
    # cookies[:message] = "It's a cookie!"
    # session[:message] = "It's a session!"
    # flash[:message]   = "It's a flash!"
    @horses = Horse.all
  end

  def show
    @horse = Horse.find(params[:id])
    if params[:flashing] == "render_now"
      flash.now[:message] = "RENDER NOW"
      render :show
    elsif params[:flashing] == "render_later"
      flash[:message] = "RENDER LATER"
      render :show
    elsif params[:flashing] == "redirect_now"
      flash.now[:message] = "REDIRECT NOW"
      redirect_to horse_path(@horse)
    elsif params[:flashing] == "redirect_later"
      flash[:message] = "REDIRECT LATER"
      redirect_to horse_path(@horse)
    end
  end
end
