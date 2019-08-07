class BrewsController < ApplicationController
  def index
    @brew = Brew.all
  end
end
