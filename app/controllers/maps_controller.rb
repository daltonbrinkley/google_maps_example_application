class MapsController < ApplicationController
  def index
    response = Unirest.get("https://maps.googleapis.com/maps/api/staticmap?center=Berkeley,CA&zoom=14&size=400x400&key=#{ENV["GOOGLEMAP_API_KEY"]}")
    render json: response.body
  end
end

