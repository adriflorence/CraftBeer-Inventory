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
  @products = Product.all()
  erb(:full_stock)
end

get '/main/stock_levels' do
  @products = Product.all()
  erb(:stock_levels)
end

get '/main/categories' do
  erb(:categories)
end

get '/main/manufacturers' do
  @manufacturers = Manufacturer.all()
  erb(:manufacturers)
end

get '/main/manufacturers/:id' do
  @manufacturer = Manufacturer.find(params[:id])
  erb(:manufacturer)
end
