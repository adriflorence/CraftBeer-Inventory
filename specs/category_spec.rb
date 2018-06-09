require("minitest/autorun")
require("minitest/rg")

require_relative("../models/category.rb")

class CategoryTest < MiniTest::Test

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

  def test_category_name
    assert_equal("dairy", @category.name)
  end

  def test_category_products
    assert_equal("milk", @category.products().first.name)
  end

end
