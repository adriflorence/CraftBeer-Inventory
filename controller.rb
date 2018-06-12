require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative('./models/product')
also_reload('./models/*')

get '/' do
  erb(:home)
end


get '/stock_levels' do
  @products = Product.all()
  erb(:stock_levels)
end

get '/categories' do
  @categories = Category.all()
  erb(:categories)
end

post '/categories' do
  @category= Category.new(params)
  @category.save()
  redirect to '/categories'
end

get '/categories/new_category' do # CREATE PRODUCT
  @categories = Category.all()
  @manufacturers = Manufacturer.all()
  erb(:new_category)
end

post '/categories/:id' do # UPDATE CATEGORY
  updated_category = Category.new(params)
  updated_category.update()
  redirect to '/categories'
end

get '/categories/:id' do # LOOK UP CATEGORY
  @products = Product.all()
  @category = Category.find(params[:id])
  erb(:category)
end

# # # #

get '/manufacturers' do
  @products = Product.all()
  @manufacturers = Manufacturer.all()
  erb(:manufacturers)
end

get '/manufacturers/new_manufacturer' do # VS. /manufacturers/new_manufacturer ??
  erb(:new_manufacturer)
end

post '/manufacturers' do # SAVE MANUFACTURER
  @manufacturer= Manufacturer.new(params)
  @manufacturer.save()
  redirect to '/manufacturers'
end

post '/manufacturers/:id' do # UPDATE MANUFACTURER
  updated_product = Product.new(params)
  updated_product.update()
  redirect to '/full_stock'
end

get '/manufacturers/:id' do # LOOK UP MANUFACTURER
  @products = Product.all()
  @manufacturer = Manufacturer.find(params[:id])
  erb(:manufacturer)
end

post '/manufacturers/:id/delete' do # DELETE MANUFACTURER
  id = params["id"].to_i
  @manufacturer = Manufacturer.find(id)
  @manufacturer.delete()
  redirect to '/manufacturers'
end

# # # #

get '/products' do
  @page = params[:page].to_i
  @pages_needed = Product.pages_needed()
  @products = Product.filter(@page)
  erb(:products)
end

get '/products/new_product' do # CREATE PRODUCT
  @manufacturers = Manufacturer.all()
  @categories = Category.all()
  erb(:new_product)
end

post '/products' do # SAVE PRODUCT
  @product= Product.new(params)
  @product.save()
  redirect to '/products'
end

get '/products/:id/edit_product' do # EDIT PRODUCT
  @manufacturers = Manufacturer.all()
  @categories = Category.all()
  @product= Product.find(params[:id])
  erb(:edit_product)
end

get '/products/:id' do # INFO ABOUT PRODUCT
  @product= Product.find(params[:id])
  @categories = Category.all()
  @manufacturer = @product.manufacturer()
  binding.pry
  erb(:product)
end

post '/products/:id' do # UPDATE PRODUCT
  updated_product = Product.new(params)
  updated_product.update()
  redirect to '/products'
end

post '/products/:id/delete' do # DELETE PRODUCT
  id = params["id"].to_i
  @product = Product.find(id)
  @product.delete()
  redirect to '/products'
end


# # #

get '/about' do
  erb(:about)
end
