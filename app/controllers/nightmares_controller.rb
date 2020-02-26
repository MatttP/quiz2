class NightmaresController < ApplicationController
  def index
    @nightmare = Nightmare.order("RANDOM()").first
  end

  def new
    @nightmare = Nightmare.new
  end

  def create
    Nightmare.create(night_params)
    redirect_to root_path
  end

  private

  def night_params
    params.require(:nightmare).permit(:saying, :author)
  end

end
