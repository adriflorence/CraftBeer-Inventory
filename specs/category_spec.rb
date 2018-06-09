require("minitest/autorun")
require("minitest/rg")

require_relative("../models/category.rb")

class CategoryTest < MiniTest::Test

  def setup
    @category1 = category1 = Category.new({"name" => "vegetables"})
  end

  def test_category_name
    assert_equal("vegetables", @category1.name)
  end

end
