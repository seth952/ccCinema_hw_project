require_relative('../db/sql_runner')


class Ticket

  def initialize
    @id = ['id'].to_i() if details['id']
    @film_id = ['film_id'].to_i()
    @customer_id = ['customer_id'].to_i()

  end

















end
