require_relative('../models/category.rb')
require_relative('../models/manufacturer.rb')
require_relative('../models/product.rb')
require('pry-byebug')

Product.delete_all()
Category.delete_all()
Manufacturer.delete_all()

manufacturer1 = Manufacturer.new({"name" => "3 Floyds Brewing Co.", "country" => "U.S.A."})
manufacturer2 = Manufacturer.new({"name" => "Pipeworks Brewing Co.", "country" => "U.S.A."})
manufacturer3 = Manufacturer.new({"name" => "Southern Star", "country" => "U.S.A."})
manufacturer4 = Manufacturer.new({"name" => "Great Divide Brewing Co.", "country" => "U.S.A."})
manufacturer5 = Manufacturer.new({"name" => "Heineken Nederland BV", "country" => "The Netherlands"})
manufacturer6 = Manufacturer.new({"name" => "Belheaven Brewery Co.", "country" => "Scotland"})
manufacturer7 = Manufacturer.new({"name" => "Borwar Amber", "country" => "Poland"})
manufacturer8 = Manufacturer.new({"name" => "The Horny Goat Brewing Co.", "country" => "U.S.A."})
manufacturer9 = Manufacturer.new({"name" => "BrewDog", "country" => "Scotland"})
manufacturer10 = Manufacturer.new({"name" => "Williams Brothers Brewing Co.", "country" => "Scotland"})
manufacturer11 = Manufacturer.new({"name" => "Pilzensky Prazdroy", "country" => "Czech Republic"})
manufacturer12 = Manufacturer.new({"name" => "Drygate", "country" => "Scotland"})
manufacturer13 = Manufacturer.new({"name" => "Kralovsky Pivovar", "country" => "Czech Republic"})
manufacturer14 = Manufacturer.new({"name" => "Brouwerij Huyghe", "country" => "Belgium"})
manufacturer15 = Manufacturer.new({"name" => "Innis & Gunn Brewery", "country" => "Scotland"})
manufacturer16 = Manufacturer.new({"name" => "Sierra Nevada Brewing Co.", "country" => "U.S.A."})
manufacturer17 = Manufacturer.new({"name" => "Staropramen Brewery", "country" => "Czech Republic"})



manufacturer1.save()
manufacturer2.save()
manufacturer3.save()
manufacturer4.save()
manufacturer5.save()
manufacturer6.save()
manufacturer7.save()
manufacturer8.save()
manufacturer9.save()
manufacturer10.save()
manufacturer11.save()
manufacturer12.save()
manufacturer13.save()
manufacturer14.save()
manufacturer15.save()
manufacturer16.save()
manufacturer17.save()


category1 = Category.new({"name" => "APA", "image" => "apa.png"})
category2 = Category.new({"name" => "Bitter", "image" => "bitter.png"})
category3 = Category.new({"name" => "Blonde Ale", "image" => "blonde_ale.png"})
category4 = Category.new({"name" => "Fruit Beer", "image" => "fruit_beer.png"})
category5 = Category.new({"name" => "Brown Ale", "image" => "brown_ale.png"})
category6 = Category.new({"name" => "Red Ale", "image" => "red_ale.png"})
category7 = Category.new({"name" => "IPA", "image" => "ipa.png"})
category8 = Category.new({"name" => "Lager", "image" => "lager.png"})
category9 = Category.new({"name" => "Pale Ale", "image" => "pale_ale.png"})
category10 = Category.new({"name" => "Pilsner", "image" => "pilsner.png"})
category11 = Category.new({"name" => "Porter", "image" => "porter.png"})
category12 = Category.new({"name" => "Stout", "image" => "stout.png"})

category1.save()
category2.save()
category3.save()
category4.save()
category5.save()
category6.save()
category7.save()
category8.save()
category9.save()
category10.save()
category11.save()
category12.save()

product1 = Product.new({
  "name" => "Zombie Dust",
  "manufacturer_id" => manufacturer1.id,
  "category_id" => category1.id,
  "description" => "Intensely Hoppy!",
  "alcohol_content" => "6.20%",
  "quantity" => 10,
  "volume" => "330ml",
  "ideal_amount" => 10,
  "cost_price" => 2.50,
  "sell_price" => 4.50,
  "image" => "zombie.jpg"
})

product2 = Product.new({
  "name" => "Lizard King",
  "manufacturer_id" => manufacturer2.id,
  "category_id" => category1.id,
  "description" => "to do with the battle between ninjas and unicorns",
  "alcohol_content" => "6.00%",
  "quantity" => 3,
  "volume" => "330ml",
  "ideal_amount" => 10,
  "cost_price" => 2.80,
  "sell_price" => 4.00,
  "image" => "lizard_king.jpg"
})

product3 = Product.new({
  "name" => "Bombshell Blonde",
  "manufacturer_id" => manufacturer3.id,
  "category_id" => category3.id,
  "description" => "Intensely Hoppy!",
  "alcohol_content" => "5.25%",
  "quantity" => 10,
  "volume" => "500ml",
  "ideal_amount" => 10,
  "cost_price" => 2.50,
  "sell_price" => 4.50,
  "image" => "bombshell_blonde.png"
})

product4 = Product.new({
  "name" => "Pilsner Urquell",
  "manufacturer_id" => manufacturer11.id,
  "category_id" => category10.id,
  "description" => "the world’s first pilsner type blond lager",
  "alcohol_content" => "4.40%",
  "quantity" => 10,
  "volume" => "500ml",
  "ideal_amount" => 10,
  "cost_price" => 1.90,
  "sell_price" => 3.50,
  "image" => "pilsner_urquell.jpg"
})

product5 = Product.new({
  "name" => "Krusovice Imperial",
  "manufacturer_id" => manufacturer13.id,
  "category_id" => category10.id,
  "description" => "a wonderful light refreshing beer",
  "alcohol_content" => "5.00%",
  "quantity" => 10,
  "volume" => "500ml",
  "ideal_amount" => 10,
  "cost_price" => 2.50,
  "sell_price" => 4.50,
  "image" => "krusovice.png"
})

product6 = Product.new({
  "name" => "Newcastle Summer Ale",
  "manufacturer_id" => manufacturer5.id,
  "category_id" => category2.id,
  "description" => "not from that Newcastle..",
  "alcohol_content" => "4.40%",
  "quantity" => 10,
  "volume" => "500ml",
  "ideal_amount" => 10,
  "cost_price" => 2.50,
  "sell_price" => 4.50,
  "image" => "newcastle_summerale.jpg"
})

product7 = Product.new({
  "name" => "Delirium Red",
  "manufacturer_id" => manufacturer14.id,
  "category_id" => category4.id,
  "description" => "Adri's favourite beer!",
  "alcohol_content" => "8.5%",
  "quantity" => 10,
  "volume" => "250ml",
  "ideal_amount" => 10,
  "cost_price" => 2.50,
  "sell_price" => 4.50,
  "image" => "delirium_red.jpg"
})

product8 = Product.new({
  "name" => "Joker",
  "manufacturer_id" => manufacturer10.id,
  "category_id" => category7.id,
  "description" => "full of flavour and is sure to put a smile on your face.",
  "alcohol_content" => "5.0%",
  "quantity" => 10,
  "volume" => "500ml",
  "ideal_amount" => 10,
  "cost_price" => 2.50,
  "sell_price" => 4.50,
  "image" => "joker.png"
})

product9 = Product.new({
  "name" => "Orinoco Breakfast Stout",
  "manufacturer_id" => manufacturer12.id,
  "category_id" => category12.id,
  "description" => "like Lyle's women, dark & heavy!",
  "alcohol_content" => "6.00%",
  "quantity" => 10,
  "volume" => "200ml",
  "ideal_amount" => 10,
  "cost_price" => 1.10,
  "sell_price" => 1.80,
  "image" => "orinoco_stout.png"
})

product10 = Product.new({
  "name" => "Blood Of The Unicorn",
  "manufacturer_id" => manufacturer12.id,
  "category_id" => category6.id,
  "description" => "Pipeworks Ninja vs Unicorn's hot redheaded sister.",
  "alcohol_content" => "4.80%",
  "quantity" => 10,
  "volume" => "330ml",
  "ideal_amount" => 10,
  "cost_price" => 1.00,
  "sell_price" => 1.80,
  "image" => "blood_of_the_unicorn.jpg"
})

product11 = Product.new({
  "name" => "Birds And Bees",
  "manufacturer_id" => manufacturer10.id,
  "category_id" => category3.id,
  "description" => "the friendliest welcome in central Scotland.",
  "alcohol_content" => "4.80%",
  "quantity" => 20,
  "volume" => "500ml",
  "ideal_amount" => 10,
  "cost_price" => 1.00,
  "sell_price" => 1.65,
  "image" => "birds_and_bees.png"
})

product12 = Product.new({
  "name" => "Seven Giraffes",
  "manufacturer_id" => manufacturer10.id,
  "category_id" => category7.id,
  "description" => "feisty pale ale with a flavour that's 42 metres tall.",
  "alcohol_content" => "4.80%",
  "quantity" => 20,
  "volume" => "500ml",
  "ideal_amount" => 10,
  "cost_price" => 1.00,
  "sell_price" => 1.65,
  "image" => "seven_giraffes.jpg"
})

product13 = Product.new({
  "name" => "Caesar Augustus",
  "manufacturer_id" => manufacturer10.id,
  "category_id" => category8.id,
  "description" => "a Lager/IPA hybrid for those who cannot decide on their favourite Roman Emperor. Caesar? Augustus? Both!",
  "alcohol_content" => "4.10%",
  "quantity" => 20,
  "volume" => "500ml",
  "ideal_amount" => 10,
  "cost_price" => 1.00,
  "sell_price" => 1.65,
  "image" => "ceasar_augustus.jpg"
})

product14 = Product.new({
  "name" => "Elvis Juice",
  "manufacturer_id" => manufacturer9.id,
  "category_id" => category7.id,
  "description" => "Bitter-edged Grapefruit flavor!",
  "alcohol_content" => "6.50%",
  "quantity" => 6,
  "volume" => "330ml",
  "ideal_amount" => 10,
  "cost_price" => 1.00,
  "sell_price" => 1.65,
  "image" => "elvis_juice.jpg"
})

product15 = Product.new({
  "name" => "Samurai Ale",
  "manufacturer_id" => manufacturer4.id,
  "category_id" => category3.id,
  "description" => "Blonde Ale!",
  "alcohol_content" => "5.10%",
  "quantity" => 6,
  "volume" => "330ml",
  "ideal_amount" => 10,
  "cost_price" => 1.00,
  "sell_price" => 2.25,
  "image" => "samurai_ale.png"
})

product16 = Product.new({
  "name" => "Belhaven Best",
  "manufacturer_id" => manufacturer6.id,
  "category_id" => category2.id,
  "description" => "Yummy!",
  "alcohol_content" => "3.90%",
  "quantity" => 6,
  "volume" => "500ml",
  "ideal_amount" => 10,
  "cost_price" => 1.00,
  "sell_price" => 2.25,
  "image" => "belhaven_best.jpg"
})

product17 = Product.new({
  "name" => "Heineken",
  "manufacturer_id" => manufacturer5.id,
  "category_id" => category8.id,
  "description" => "well known for its signature green bottle and red star.",
  "alcohol_content" => "5.00%",
  "quantity" => 40,
  "volume" => "330ml",
  "ideal_amount" => 10,
  "cost_price" => 1.00,
  "sell_price" => 2.25,
  "image" => "heineken.jpg"
})

product18 = Product.new({
  "name" => "Disco Forklift Truck",
  "manufacturer_id" => manufacturer12.id,
  "category_id" => category1.id,
  "description" => "a MANGO FANDANGO! JUICY PALE ALE LOADED TO THE GUNNELS WITH US HOPS AND MANGO. ",
  "alcohol_content" => "5.10%",
  "quantity" => 40,
  "volume" => "250ml",
  "ideal_amount" => 10,
  "cost_price" => 1.00,
  "sell_price" => 2.25,
  "image" => "disco_forklift_truck.jpg"
})

product19 = Product.new({
  "name" => "Bearface",
  "manufacturer_id" => manufacturer12.id,
  "category_id" => category8.id,
  "description" => "bangs, cigarettes, and rock ballads",
  "alcohol_content" => "4.40%",
  "quantity" => 40,
  "volume" => "500ml",
  "ideal_amount" => 10,
  "cost_price" => 1.60,
  "sell_price" => 2.25,
  "image" => "bearface.jpg"
})

product20 = Product.new({
  "name" => "Ax Man",
  "manufacturer_id" => manufacturer12.id,
  "category_id" => category5.id,
  "description" => "Hipster Rye Ale",
  "alcohol_content" => "5.00%",
  "quantity" => 10,
  "volume" => "piece",
  "ideal_amount" => 10,
  "cost_price" => 1.60,
  "sell_price" => 1.95,
  "image" => "ax_man.png"
})

product21 = Product.new({
  "name" => "Outaspace",
  "manufacturer_id" => manufacturer12.id,
  "category_id" => category4.id,
  "description" => "Apple Ale",
  "alcohol_content" => "4.70%",
  "quantity" => 10,
  "volume" => "500ml",
  "ideal_amount" => 10,
  "cost_price" => 1.00,
  "sell_price" => 1.95,
  "image" => "outaspace.png"
})

product22 = Product.new({
  "name" => "Krušovice 12",
  "manufacturer_id" => manufacturer13.id,
  "category_id" => category8.id,
  "description" => "Pale 12.3° lager",
  "alcohol_content" => "4.80%",
  "quantity" => 10,
  "volume" => "500ml",
  "ideal_amount" => 10,
  "cost_price" => 1.00,
  "sell_price" => 1.95,
  "image" => "krusovice.png"
})

product23 = Product.new({
  "name" => "Innis & Gunn",
  "manufacturer_id" => manufacturer15.id,
  "category_id" => category8.id,
  "description" => "Steve's favourite!",
  "alcohol_content" => "6.60%",
  "quantity" => 10,
  "volume" => "330ml",
  "ideal_amount" => 24,
  "cost_price" => 1.20,
  "sell_price" => 1.95,
  "image" => "innis_gunn.jpg"
})

product24 = Product.new({
  "name" => "Punk IPA",
  "manufacturer_id" => manufacturer9.id,
  "category_id" => category7.id,
  "description" => "EVERYONE'S FAVOURITE!!",
  "alcohol_content" => "5.60%",
  "quantity" => 10,
  "volume" => "330ml",
  "ideal_amount" => 100,
  "cost_price" => 1.80,
  "sell_price" => 4.40,
  "image" => "punk_ipa.jpg"
})

product25 = Product.new({
  "name" => "Jack Hammer",
  "manufacturer_id" => manufacturer9.id,
  "category_id" => category7.id,
  "description" => "full of citrus fruit and sweet aromas",
  "alcohol_content" => "7.20%",
  "quantity" => 10,
  "volume" => "330ml",
  "ideal_amount" => 12,
  "cost_price" => 2.19,
  "sell_price" => 4.80,
  "image" => "jack_hammer.png"
})

product26 = Product.new({
  "name" => "Jet Black Heart",
  "manufacturer_id" => manufacturer9.id,
  "category_id" => category11.id,
  "description" => " roasted bitterness, coffee and chocolate.",
  "alcohol_content" => "4.70%",
  "quantity" => 10,
  "volume" => "330ml",
  "ideal_amount" => 100,
  "cost_price" => 1.79,
  "sell_price" => 4.80,
  "image" => "jet_black_heart.png"
})

product27 = Product.new({
  "name" => "Sierra Nevada",
  "manufacturer_id" => manufacturer16.id,
  "category_id" => category1.id,
  "description" => "Cambell's favourite!",
  "alcohol_content" => "4.70%",
  "quantity" => 10,
  "volume" => "350ml",
  "ideal_amount" => 6,
  "cost_price" => 1.80,
  "sell_price" => 3.50,
  "image" => "sierra_nevada.png"
})

product28 = Product.new({
  "name" => "Staropramen",
  "manufacturer_id" => manufacturer17.id,
  "category_id" => category8.id,
  "description" => "Dani kedvence!",
  "alcohol_content" => "5.00%",
  "quantity" => 20,
  "volume" => "500ml",
  "ideal_amount" => 6,
  "cost_price" => 1.40,
  "sell_price" => 3.50,
  "image" => "staropramen.jpeg"
})

product29 = Product.new({
  "name" => "Belhaven Stout",
  "manufacturer_id" => manufacturer6.id,
  "category_id" => category12.id,
  "description" => "Daaark!",
  "alcohol_content" => "4.20%",
  "quantity" => 12,
  "volume" => "500ml",
  "ideal_amount" => 8,
  "cost_price" => 1.80,
  "sell_price" => 4.10,
  "image" => "belhaven_stout.png"
})

product30 = Product.new({
  "name" => "Belhaven Intergalactic",
  "manufacturer_id" => manufacturer6.id,
  "category_id" => category8.id,
  "description" => "Rich sweet toffee, subtle malty finish",
  "alcohol_content" => "5.00%",
  "quantity" => 2,
  "volume" => "500ml",
  "ideal_amount" => 4,
  "cost_price" => 1.40,
  "sell_price" => 3.25,
  "image" => "belhaven_intergalactic.png"
})

product31 = Product.new({
  "name" => "Belhaven Wee Heavy",
  "manufacturer_id" => manufacturer6.id,
  "category_id" => category5.id,
  "description" => " daaark and heavy!",
  "alcohol_content" => "7.40%",
  "quantity" => 4,
  "volume" => "330ml",
  "ideal_amount" => 4,
  "cost_price" => 2.00,
  "sell_price" => 5.10,
  "image" => "belhaven_wee_heavy.png"
})

product32 = Product.new({
  "name" => "Speyside",
  "manufacturer_id" => manufacturer6.id,
  "category_id" => category3.id,
  "description" => "an oak-aged golden ale..yumm!",
  "alcohol_content" => "6.50%",
  "quantity" => 12,
  "volume" => "500ml",
  "ideal_amount" => 8,
  "cost_price" => 1.60,
  "sell_price" => 4.00,
  "image" => "belhaven_speyside.jpg"
})

product33 = Product.new({
  "name" => "Früli Strawberry",
  "manufacturer_id" => manufacturer14.id,
  "category_id" => category4.id,
  "description" => "Louise's favourite",
  "alcohol_content" => "4.10%",
  "quantity" => 4,
  "volume" => "330ml",
  "ideal_amount" => 4,
  "cost_price" => 1.60,
  "sell_price" => 3.75,
  "image" => "fruli_strawberry.jpg"
})



product1.save()
product2.save()
product3.save()
product4.save()
product5.save()
product6.save()
product7.save()
product8.save()
product9.save()
product10.save()
product11.save()
product12.save()
product13.save()
product14.save()
product15.save()
product16.save()
product17.save()
product18.save()
product19.save()
product20.save()
product21.save()
product22.save()
product23.save()
product24.save()
product25.save()
product26.save()
product27.save()
product28.save()
product29.save()
product30.save()
product31.save()
product32.save()
product33.save()
