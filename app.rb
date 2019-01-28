require 'sinatra/base'
require './lib/bookmarks'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmarks = Bookmarks.all
    erb :bookmarks
  end
end
