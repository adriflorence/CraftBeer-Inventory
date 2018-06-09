require("minitest/autorun")
require("minitest/rg")

require_relative("../models/manufacturer.rb")

class ManufacturerTest < MiniTest::Test

  def setup
    Manufacturer.delete_all()
    @manufacturer = Manufacturer.new({"name" => "Scottish Dairy", "phone" => "123123123"})
    @manufacturer.save()
    @category = Category.new({"name" => "dairy"})
    @category.save()
    @product = Product.new({
      "name" => "milk",
      "manufacturer_id" => @manufacturer.id,
      "category_id" => @category.id,
      "description" => "straight from the cow",
      "quantity" => 5,
      "unit" => "box",
      "ideal_amount" => 20,
      "cost_price" => 1,
      "sell_price" => 2
    })
    @product.save()
  end

  def test_manufacturer_name
    assert_equal("Scottish Dairy", @manufacturer.name)
  end

  def test_manufacturer_phone
    assert_equal("123123123", @manufacturer.phone)
  end

end
