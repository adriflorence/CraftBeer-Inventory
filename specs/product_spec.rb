require("minitest/autorun")
require("minitest/rg")

require_relative("../models/manufacturer.rb")

class ProductTest < MiniTest::Test

  def setup
    @product = Product.new({
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
  end

  def test_manufacturer_name
    assert_equal("Scottish Dairy", @manufacturer1.name)
  end

  def test_manufacturer_phone
    assert_equal("123123123", @manufacturer1.phone)
  end

end
