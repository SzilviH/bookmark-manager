require 'sinatra/base'
require './lib/bookmarks'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmark_class = Bookmarks.new
    erb :bookmarks
  end
end
