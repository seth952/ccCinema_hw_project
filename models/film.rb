equire_relative('../db/sql_runner')

attr_accessor :title, :price
attr_reader :id
class Film()



def initialize(details)
  @id = details['id'].to_i() if details['id']
  @title = details['title']
  @price = details['price'].to_i()

end

# def save()
#   sql = "INSERT INTO films (title, price) VALUES ($1, $2) RETURNING id"
#   values = [@title, @price]
#   result = SqlRunner.run(sql, values)
#   @id = result[0]['id'].to_i()
# end
#
# def self.all()
#   sql = "SELECT * FROM films"
#   films = SqlRunner.run(sql)
#   return filmss.map {|film| Film.new(film)}
# end
#
# def self.delete_all()
#   sql = "DELETE FROM films"
#   SqlRunner.run(sql)
# end























end