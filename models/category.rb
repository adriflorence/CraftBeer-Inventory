require_relative('../db/sql_runner')

require_relative("product.rb")

class Category

  attr_reader :id
  attr_accessor :name, :image

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
    @image = options['image']
  end

  def save()
    sql = "INSERT INTO categories (name, image) VALUES ($1, $2) RETURNING id"
    values = [@name, @image]
    cat_data = SqlRunner.run(sql, values)
    @id = cat_data.first()['id'].to_i
  end

  def self.find(id)
    sql = "SELECT * FROM categories WHERE id = $1"
    values = [id]
    category = SqlRunner.run(sql, values)
    return Category.new(category.first)
  end

  def self.all()
    sql = "SELECT * FROM categories"
    categories = SqlRunner.run( sql )
    result = categories.map { |category| Category.new( category ) }
    return result
  end

  def self.delete_all()
    sql = "DELETE FROM categories"
    SqlRunner.run(sql)
  end

  # # # #

  def products()
    sql = "SELECT products.name FROM products INNER JOIN categories ON
    categories.id = products.category_id WHERE categories.id = $1"
    values = [@id]
    products = SqlRunner.run(sql, values)
    return products.map{|product| Product.new(product)}.first
  end

end
