require File.dirname(__FILE__) + '/model'
require 'sinatra'


#index page
get '/' do
  erb :index
end

#album display
get '/album/:id' do |album_id|
  @album =  Album.find(album_id)
  erb :album
end
