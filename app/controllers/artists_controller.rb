class ArtistsController < ApplicationController
  def index
  end

  def show
  end


  private

  def artist_params
    params.require(:artist).permit(:name)
  end
end
