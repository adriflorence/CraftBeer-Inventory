require_relative('../db/sql_runner')

require_relative("product.rb")

class Manufacturer

  attr_reader :id
  attr_accessor :name

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO manufacturers (name) VALUES ($1) RETURNING id"
    values = [@name]
    manu_data = SqlRunner.run(sql, values)
    @id = manu_data.first()['id'].to_i
  end

end
