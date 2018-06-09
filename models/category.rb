require_relative('../db/sql_runner')

require_relative("product.rb")

class Category

  attr_reader :id
  attr_accessor :name

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO categories (name) VALUES ($1) RETURNING id"
    values = [@name]
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

end
