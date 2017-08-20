class SeeForYourselvesController < ApplicationController
  def index
    @see_for_yourselves = SeeForYourself.all
  end

  def show
    @see_for_yourself = SeeForYourself.find(params[:id])
  end
end
