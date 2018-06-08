require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative('./models/product')
also_reload('./models/*')

get '/' do
  erb(:home)
end

get '/main' do
  erb(:main)
end

get '/main/full_stock' do
  erb(:full_stock)
end
