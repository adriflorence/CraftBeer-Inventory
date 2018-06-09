require( 'pry-byebug' )
require_relative('../db/sql_runner')

require_relative("product.rb")

class Manufacturer

  attr_reader :id
  attr_accessor :name, :phone

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
    @phone = options['phone']
  end

  def save()
    sql = "INSERT INTO manufacturers (name, phone) VALUES ($1, $2) RETURNING id"
    values = [@name, @phone]
    manu_data = SqlRunner.run(sql, values)
    @id = manu_data.first()['id'].to_i
  end

  def self.find(id)
    sql = "SELECT * FROM manufacturers WHERE id = $1"
    values = [id]
    manufacturer = SqlRunner.run(sql, values)
    return Manufacturer.new(manufacturer.first)
  end

  def self.all()
    sql = "SELECT * FROM manufacturers"
    manufacturers = SqlRunner.run( sql )
    result = manufacturers.map { |manufacturer| Manufacturer.new( manufacturer ) }
    return result
  end

  def self.delete_all()
    sql = "DELETE FROM manufacturers"
    SqlRunner.run(sql)
  end

  # # # #

  def products()
    sql = "SELECT products.name FROM products INNER JOIN manufacturers ON
    manufacturers.id = products.manufacturer_id WHERE manufacturers.id = $1"
    values = [@id]
    products = SqlRunner.run(sql, values)
    return products.map{|product| Product.new(product)}.first
  end

end
