require_relative('../models/category.rb')
require_relative('../models/manufacturer.rb')
require_relative('../models/product.rb')
require('pry-byebug')

Product.delete_all()
Category.delete_all()
Manufacturer.delete_all()

manufacturer1 = Manufacturer.new({"name" => "Scottish Dairy", "phone" => "123123123"})
manufacturer2 = Manufacturer.new({"name" => "Pillars of Hercules", "phone" => "123123123"})
manufacturer3 = Manufacturer.new({"name" => "Grow Wild Organics", "phone" => "123123123"})
manufacturer4 = Manufacturer.new({"name" => "Tapa Organic Bakery", "phone" => "123123123"})
manufacturer1.save()
manufacturer2.save()
manufacturer3.save()
manufacturer4.save()

category1 = Category.new({"name" => "vegetables"})
category2 = Category.new({"name" => "fruit"})
category3 = Category.new({"name" => "dairy"})
category4 = Category.new({"name" => "legumes"})
category5 = Category.new({"name" => "drinks"})
category6 = Category.new({"name" => "condiments"})
category7 = Category.new({"name" => "meat"})
category8 = Category.new({"name" => "bakery"})
category9 = Category.new({"name" => "fish"})
category1.save()
category2.save()
category3.save()
category4.save()
category5.save()
category6.save()
category7.save()
category8.save()
category9.save()

product1 = Product.new({
  "name" => "apple",
  "manufacturer_id" => manufacturer2.id,
  "category_id" => category2.id,
  "description" => "big round red apples",
  "quantity" => 10,
  "unit" => "piece",
  "ideal_amount" => 10,
  "cost_price" => 0.5,
  "sell_price" => 1
})

product2 = Product.new({
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

product3 = Product.new({
  "name" => "tomato",
  "manufacturer_id" => manufacturer2.id,
  "category_id" => category1.id,
  "description" => "super ripe 'matos",
  "quantity" => 20,
  "unit" => "piece",
  "ideal_amount" => 30,
  "cost_price" => 0.8,
  "sell_price" => 1
})

product4 = Product.new({
  "name" => "potato",
  "manufacturer_id" => manufacturer2.id,
  "category_id" => category1.id,
  "description" => "Potato, Solanum tuberosum, is an herbaceous perennial plant in the family Solanaceae which is grown for its edible tubers. ",
  "quantity" => 50,
  "unit" => "kg",
  "ideal_amount" => 80,
  "cost_price" => 0.3,
  "sell_price" => 0.8
})

product5 = Product.new({
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

product6 = Product.new({
  "name" => "milk",
  "manufacturer_id" => manufacturer1.id,
  "category_id" => category3.id,
  "description" => "straight from the cow",
  "quantity" => 5,
  "unit" => "box",
  "ideal_amount" => 20,
  "cost_price" => 1,
  "sell_price" => 2
})

product7 = Product.new({
  "name" => "cheese",
  "manufacturer_id" => manufacturer1.id,
  "category_id" => category3.id,
  "description" => "block of cheese",
  "quantity" => 4,
  "unit" => "500g",
  "ideal_amount" => 10,
  "cost_price" => 3,
  "sell_price" => 8
})

product8 = Product.new({
  "name" => "wholegrain bread",
  "manufacturer_id" => manufacturer4.id,
  "category_id" => category8.id,
  "description" => "fresh loaf",
  "quantity" => 40,
  "unit" => "500g",
  "ideal_amount" => 30,
  "cost_price" => 1,
  "sell_price" => 2
})

product1.save()
product2.save()
product3.save()
product4.save()
product5.save()
product6.save()
product7.save()
product8.save()
