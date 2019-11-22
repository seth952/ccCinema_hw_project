require('pry')
# require_relative( 'models/ticket' )
require_relative('models/customer')
require_relative('models/film')


# # Ticket.delete_all()
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


binding.pry()

nil
