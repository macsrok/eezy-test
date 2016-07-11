class PhotosController < ApplicationController
  include PhotosHelper

  def index
    #fetch the most popular photos on 500px to display on the home page.
    @photos = FiveHundredAPI.most_popular
  end

  def search
    #desterilize the search terms
    terms = desterilize_search_terms params[:terms]

    #fetch the photos
    @photos = FiveHundredAPI.search(terms, params[:page])
  end

  def redirect

    #Find the existing photo record with the correct search term and external id, or create it.
    photo = Photo.find_or_create_by(search_term:params[:terms], external_id:params[:external_id])

    #increment the click count
    photo.increment(:click_count)
    photo.save

    #redirect the user
    redirect_to "https://500px.com/photo/#{params[:external_id]}"
  end

end
