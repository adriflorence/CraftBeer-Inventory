require_relative('../models/category.rb')
require_relative('../models/manufacturer.rb')
require_relative('../models/product.rb')
require('pry-byebug')

# Product.delete_all()
# Category.delete_all()
# Manufacturer.delete_all()

manufacturer1 = Manufacturer.new({"name" => "Scottish Dairy"})
manufacturer2 = Manufacturer.new({"name" => "Pillars of Hercules"})
manufacturer3 = Manufacturer.new({"name" => "Grow Wild Organics"})
manufacturer1.save()
manufacturer2.save()
manufacturer3.save()

category1 = Category.new({"name" => "vegetables"})
category2 = Category.new({"name" => "fruit"})
category3 = Category.new({"name" => "dairy"})
category4 = Category.new({"name" => "legumes"})
category5 = Category.new({"name" => "drinks"})
category6 = Category.new({"name" => "condiments"})
category1.save()
category2.save()
category3.save()
category4.save()
category5.save()
category6.save()

product1 = Product.new({
  "name" => "carrot",
  "manufacturer_id" => manufacturer2.id,
  "category_id" => category1.id,
  "description" => "carrots indeed",
  "quantity" => 30,
  "unit" => "piece",
  "ideal_amount" => 30,
  "cost_price" => 1,
  "sell_price" => 2
  })

product2 = Product.new({
  "name" => "flour",
  "manufacturer_id" => manufacturer3.id,
  "category_id" => category1.id,
  "description" => "full on organic flour!!",
  "quantity" => 30,
  "unit" => "pack",
  "ideal_amount" => 20,
  "cost_price" => 1,
  "sell_price" => 3
  })

product1.save()
product2.save()

# product1.save()
