require 'sinatra/base'
require './lib/bookmark'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmark = Bookmark.new
    erb :bookmarks
  end
end
