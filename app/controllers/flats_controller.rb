require "open-uri"

class FlatsController < ApplicationController
  def index
    get_flats
  end

  def show
    raise
    get_flats
    @flat_info = @flats.find { |flat| flat['id'].to_i == params[:id].to_i }
  end

  def get_flats
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(open(url).read)
  end
end
