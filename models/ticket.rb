require_relative('../db/sql_runner')


  class Ticket

      attr_accessor :film_id, :customer_id
      attr_reader :id

  def initialize(details)
    @id = details['id'].to_i() if details['id']
    @film_id = details['film_id'].to_i()
    @customer_id = details['customer_id'].to_i()

  end


    def save()
      sql = "INSERT INTO tickets (film_id, customer_id)
      VALUES ($1, $2) RETURNING id"
      values = [@film_id, @customer_id]
      result = SqlRunner.run(sql, values)
      @id = result[0]['id'].to_i()
    end

    def self.delete_all()
      sql = "DELETE FROM tickets"
      SqlRunner.run(sql)
    end

    def delete()
      sql = "DELETE FROM tickets WHERE id = $1"
      values = [@id]
      SqlRunner.run(sql, values)

    end

    def self.all()
      sql = "SELECT * FROM tickets"
      tickets = SqlRunner.run(sql)
      return tickets.map {|ticket| Ticket.new(ticket)}
    end

    def update()
      sql = "UPDATE tickets SET (film_id, customer_id) = ($1, $2) WHERE id = $3 "
      values = [@film_id, @customer_id, @id]
      result = SqlRunner.run(sql, values)

    end

#
end
