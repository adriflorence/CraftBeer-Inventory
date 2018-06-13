require("minitest/autorun")
require("minitest/rg")

require_relative("../models/manufacturer.rb")

class ManufacturerTest < MiniTest::Test

  def setup
    Manufacturer.delete_all()
    @manufacturer = Manufacturer.new({"name" => "3 Floyds Brewing Co.", "country" => "U.S.A."})
    @manufacturer.save()
    @category = Category.new({"name" => "APA", "image" => "apa.png"})
    @category.save()
    @product = Product.new({
      "name" => "Zombie Dust",
      "manufacturer_id" => @manufacturer.id,
      "category_id" => @category.id,
      "description" => "Intensely Hoppy!",
      "alcohol_content" => "6.20%",
      "quantity" => 10,
      "volume" => "330ml",
      "ideal_amount" => 10,
      "cost_price" => 2.50,
      "sell_price" => 4.50,
      "image" => "zombie.jpg"
    })
    @product.save()
  end

  def test_manufacturer_name
    assert_equal("3 Floyds Brewing Co.", @manufacturer.name)
  end

  def test_manufacturer_phone
    assert_equal("U.S.A.", @manufacturer.country)
  end

  def test_product_names
    assert_equal("Zombie Dust", @manufacturer.products.name)
  end

end
