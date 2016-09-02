#Clase Credit Card

#Cinco CreditCard instances

#Array With five objects credit card

#tests

    cards.each do |card|
      puts "#{card.name} responds to:"
      puts "\tName: #{card.respond_to?(:name) == true}"
      puts "\tNumber: #{card.respond_to?(:number) == true}"
      puts "\tExpiration: #{card.respond_to?(:expiration) == true}"
      puts "\tcvc: #{card.respond_to?(:cvc) == true}"
      puts "\tGet status: #{card.respond_to?(:status) == true}"
      puts "\tSet status: #{card.respond_to?(:status=) == true}"
      puts "\n\n"
    end

# method to display data card