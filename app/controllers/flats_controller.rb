require "open-uri"

class FlatsController < ApplicationController
  before_action :get_flats

  def index
  end

  def show
    #find the flat with the id that comes from the params
    @flat = @flats.find { |flat| flat["id"] == params[:id].to_i }
  end

  private

  def get_flats
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(open(url).read)
    #put a raise/byebug after first use
  end
end
