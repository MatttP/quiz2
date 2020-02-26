class NightmaresController < ApplicationController
  def index
    @nightmare = Nightmare.order("RANDOM()").first
  end
end
