require("minitest/autorun")
require("minitest/rg")

require_relative("../models/category.rb")

class CategoryTest < MiniTest::Test

  def setup
    Manufacturer.delete_all()
    @manufacturer = Manufacturer.new({"name" => "3 Floyds Brewing Co.", "country" => "U.S.A."})
    @manufacturer.save()
    @category = Category.new({"name" => "American Pale Ale", "color" => "#FFE84B"})
    @category.save()
    @product = Product.new({
      "name" => "Zombie Dust",
      "manufacturer_id" => manufacturer1.id,
      "category_id" => category1.id,
      "description" => "Intensely Hoppy!",
      "quantity" => 10,
      "volume" => "piece",
      "ideal_amount" => 10,
      "cost_price" => 2.50,
      "sell_price" => 4.50
    })
    @product.save()
  end

  def test_category_name
    assert_equal("American Pale Ale", @category.name)
  end

  def test_category_products
    assert_equal("milk", @category.products().name)
  end

end
