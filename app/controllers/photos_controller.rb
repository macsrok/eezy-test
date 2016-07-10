class PhotosController < ApplicationController

  def index
    @photos = FiveHundredAPI.most_popular
  end

  def search
    terms = params[:terms]
    terms = terms.gsub('-', ' ')
    terms = terms.gsub('_', '-')
    @photos = FiveHundredAPI.search(terms, params[:page])
  end

  def redirect
    redirect_to "https://500px.com/photo/#{params[:id]}"
  end

end
