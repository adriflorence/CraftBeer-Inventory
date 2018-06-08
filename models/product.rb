require_relative('../db/sql_runner')

require_relative("manufacturer.rb")
require_relative("category.rb")

class Product

  attr_reader :id
  attr_accessor :name, :manufacturer_id, :category_id, :description, :quantity, :ideal_amount, :shelf_life, :cost_price, :sell_price

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
    @manufacturer_id = details['manufacturer_id']
    @category_id = details['category_id']
    @description = details['description']
    @quantity = details['quantity'].to_i
    @ideal_amount = details['ideal_amount'].to_i
    @shelf_life = details['shelf_life'].to_i
    @cost_price = details['cost_price'].to_i
    @sell_price = details['sell_price'].to_i
  end

end
