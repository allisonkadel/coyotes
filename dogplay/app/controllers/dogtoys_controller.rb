class DogtoysController < ApplicationController
  def index
  end

  def new
    @dogtoy = Dogtoy.new
  end

  def create
    dogtoy = Dogtoy.create(dogtoy_params)
    redirect_to dogtoy_path(dogtoy)
  end

  private

  def dogtoy_params # strong params
    params.require(:dogtoy).permit(:name, :difficulty)
  end
end
