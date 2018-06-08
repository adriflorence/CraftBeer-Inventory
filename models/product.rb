require_relative('../db/sql_runner')

require_relative("manufacturer.rb")
require_relative("category.rb")

class Product

  attr_reader :id
  attr_accessor :name, :manufacturer_id, :category_id, :description, :quantity, :ideal_amount, :shelf_life, :cost_price, :sell_price

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
    @manufacturer_id = options['manufacturer_id'].to_i
    @category_id = options['category_id'].to_i
    @description = options['description']
    @quantity = options['quantity'].to_i
    @unit = options['unit']
    @ideal_amount = options['ideal_amount'].to_i
    @cost_price = options['cost_price'].to_i
    @sell_price = options['sell_price'].to_i
  end

  def save()
    sql = "INSERT INTO products
    (name, manufacturer_id, category_id, description, quantity, unit, ideal_amount, cost_price, sell_price) VALUES
    ($1, $2, $3, $4, $5, $6, $7, $8, $9) RETURNING id"
    values = [@name, @manufacturer_id, @category_id, @description, @quantity, @unit, @ideal_amount, @cost_price, @sell_price]
    product_data = SqlRunner.run(sql, values)
    @id = product_data.first()['id'].to_i
  end

end
