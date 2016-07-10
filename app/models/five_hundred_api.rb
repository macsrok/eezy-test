class FiveHundredAPI
  require 'rest-client'

  def self.most_popular
    size = 30
    rpp = 24
    feature = 'highest_rated'
    JSON.parse(self.consume_api(size, rpp, feature))

  end

  def self.search( terms, page=1 )
    size = 30
    rpp = 48
    JSON.parse(self.consume_api(size, rpp, nil, page, terms))
  end

  private

  def self.consume_api( size, rpp, feature=nil, page=1, terms = "" )

    url = 'https://api.500px.com/v1/photos'
    if feature
      url = "#{url}?feature=#{feature}"
    else
      url = "#{url}/search?term=#{terms}&page=#{page}"
    end
     url = "#{url}&image_size=#{size}&rpp=#{rpp}&page=#{page}&exclude=Nude&consumer_key=#{ENV['FIVEHUNDREDPXKEY']}"

    RestClient.get url

  end


end