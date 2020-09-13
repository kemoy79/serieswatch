#require 'rubygems'
require 'rest-client'
require 'json'

class PagesController < ApplicationController

  def index
    @featured = JSON.parse(RestClient.get 'http://api.tvmaze.com/search/shows', {params: {'q' => 'girls'}})
  end
  
end
