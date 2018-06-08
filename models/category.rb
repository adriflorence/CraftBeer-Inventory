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

end
