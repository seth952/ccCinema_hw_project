require('pry')

require_relative('models/customer')
require_relative('models/film')
require_relative('models/ticket')


Ticket.delete_all()
Customer.delete_all()
Film.delete_all()
#
customer1 = Customer.new({
  'name' => 'Jeff',
  'funds' => 50

})
#
customer2 = Customer.new({
  'name' => 'Walter',
  'funds' => 40

})

customer3 = Customer.new({
  'name' => 'Donny',
  'funds' => 30

})
# #
customer1.save()
customer2.save()
customer3.save()

film1 = Film.new({
  'title' => 'Teenwolf',
  'price' => 10
  })

  film2 = Film.new({
    'title' => 'Back to the future',
    'price' => 10
    })

    film3 = Film.new({
      'title' => 'Breakfast Club',
      'price' => 10
      })

film1.save()
film2.save()
film3.save()


ticket1 = Ticket.new({
  'film_id' => film1.id,
  'customer_id' => customer1.id
  })

ticket2 = Ticket.new({
    'film_id' => film3.id,
    'customer_id' => customer1.id
    })

ticket3 = Ticket.new({
  'film_id' => film2.id,
  'customer_id' => customer2.id
  })

ticket4 = Ticket.new({
    'film_id' => film2.id,
    'customer_id' => customer3.id
    })

ticket5 = Ticket.new({
  'film_id' => film1.id,
  'customer_id' => customer3.id
  })

ticket1.save()
ticket2.save()
ticket3.save()
ticket4.save()
ticket5.save()

binding.pry()

nil
