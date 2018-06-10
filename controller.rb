require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative('./models/product')
also_reload('./models/*')

get '/' do
  erb(:home)
end

get '/full_stock' do
  @products = Product.all()
  erb(:full_stock)
end

get '/stock_levels' do
  @products = Product.all()
  erb(:stock_levels)
end

get '/categories' do
  @categories = Category.all()
  erb(:categories)
end

get '/manufacturers' do
  @products = Product.all()
  @manufacturers = Manufacturer.all()
  erb(:manufacturers)
end

get '/manufacturers/:id' do
  @products = Product.all()
  @manufacturer = Manufacturer.find(params[:id])
  erb(:manufacturer)
end

# # # #

get '/new_product' do
  @manufacturers = Manufacturer.all()
  @categories = Category.all()
  erb(:new_product)
end




# # # #

post '/full_stock' do
  @product= Product.new(params)
  @product.save()
  redirect to '/full_stock'
end

post '/full_stock/:id/delete' do
  id = params["id"].to_i
  @product = Product.find(id)
  # binding.pry
  @product.delete()
  redirect to '/full_stock'
end
