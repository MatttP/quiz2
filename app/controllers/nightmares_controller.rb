class NightmaresController < ApplicationController
  def index
    @nightmare = Nightmare.order("RANDOM()").first
  end

  def new
    @nightmare = Nightmare.new
  end

end
