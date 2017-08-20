class SeeForYourselvesController < ApplicationController
  def index
    @see_for_yourselves = SeeForYourself.all
  end

  def show
  end
end
