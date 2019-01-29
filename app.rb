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

  post '/add_book' do
    @bookmark_name = Bookmarks.add(params[:bookmark_name], params[:title])
    redirect '/bookmarks'
  end
end
