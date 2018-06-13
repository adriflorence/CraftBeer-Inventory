require_relative('../db/sql_runner')

require_relative("manufacturer.rb")
require_relative("category.rb")

class Product

  attr_reader :id
  attr_accessor :name, :manufacturer_id, :category_id, :description, :quantity, :alcohol_content, :volume, :ideal_amount, :shelf_life, :cost_price, :sell_price, :image

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
    @manufacturer_id = options['manufacturer_id'].to_i
    @category_id = options['category_id'].to_i
    @description = options['description']
    @quantity = options['quantity'].to_i
    @alcohol_content = options['alcohol_content'].to_f
    @volume = options['volume']
    @ideal_amount = options['ideal_amount'].to_i
    @cost_price = options['cost_price'].to_f
    @sell_price = options['sell_price'].to_f
    @image = options['image']
  end

  def save()
    sql = "INSERT INTO products
    (name, manufacturer_id, category_id, description, quantity, alcohol_content, volume, ideal_amount, cost_price, sell_price, image) VALUES
    ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11) RETURNING id"
    values = [@name, @manufacturer_id, @category_id, @description, @quantity, @alcohol_content, @volume, @ideal_amount, @cost_price, @sell_price, @image]
    product_data = SqlRunner.run(sql, values)
    @id = product_data.first()['id'].to_i
  end

  def self.find(id)
    sql = "SELECT * FROM products WHERE id = $1"
    values = [id]
    product = SqlRunner.run(sql, values)
    return Product.new(product.first)
  end

  def delete()
    sql = "DELETE FROM products WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def update()
    sql = "UPDATE products SET (name, manufacturer_id, category_id, quantity, alcohol_content, volume, description, ideal_amount, cost_price, sell_price, image) =
    ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11) WHERE id = $12"
    values = [@name, @manufacturer_id, @category_id, @quantity, @alcohol_content, @volume, @description, @ideal_amount, @cost_price, @sell_price, @image, @id]
    SqlRunner.run(sql, values)
  end

  def self.all()
    sql = "SELECT * FROM products ORDER BY id"
    products = SqlRunner.run( sql )
    result = products.map { |product| Product.new( product ) }
    return result
  end

  def self.delete_all()
    sql = "DELETE FROM products"
    SqlRunner.run(sql)
  end

  # # # #

  def self.pages_needed()
    products = Product.all()
    pages_needed = ((products.length)/10.to_f).ceil
    return pages_needed
  end

  def self.filter(page)
    products = Product.all()
    start = (10*page)-10
    finish = (10*page)-1
    return products[start..finish]
  end

  def category()
    sql = "SELECT * FROM categories WHERE id = $1"
    values = [@category_id]
    result = SqlRunner.run(sql, values)
    return Category.new(result[0])
  end

  def manufacturer()
    sql = "SELECT * FROM manufacturers WHERE id = $1"
    values = [@manufacturer_id]
    result = SqlRunner.run(sql, values)
    return Manufacturer.new(result[0])
  end

  def profit()
    return (@sell_price - @cost_price)*@quantity
  end

end
