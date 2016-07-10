class PhotosController < ApplicationController

  def index
    @photos = FiveHundredAPI.most_popular
  end

  def search
    @photos = FiveHundredAPI.search(params[:terms], params[:page])
  end

  def redirect
    redirect_to "https://500px.com/photo/#{params[:id]}"
  end

end
