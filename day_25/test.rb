# Credit Card Class

class CreditCard
  attr_accessor :name, :number, :expiration, :cvc, :status

  def initialize(name, number, expiration, cvc, status)
    @name = name
    @number = number
    @expiration = expiration
    @cvc = cvc
    @status = status
  end

end

# Five CreditCard instances

cc_amex = CreditCard.new('Amex', 2345673444, '12/15', 2345, [234, 567, 456, 567, 344])
cc_scotiabank = CreditCard.new('ScotiaBank', 2345673744, '12/16', 2845, [234, 345, 456, 567, 344])
cc_bancomer = CreditCard.new('Bancomer', 2345673444, '12/15', 2645, [234, 345, 456, 567, 344])
cc_serfin = CreditCard.new('Serfin', 2345473454, '12/20', 1345, [234, 345, 456, 567, 344])
cc_bancoppel = CreditCard.new('BanCoppel', 2345373464, '12/18', 2445, [567, 345, 456, 567, 344])

# Array With five objects credit card

cards = []
cards << cc_amex
cards << cc_scotiabank
cards << cc_bancomer
cards << cc_serfin
cards << cc_bancoppel

# Method to display data card

def show(array)
  print "|\t Name  \t|\t Number \t|\tExpiration\t|\tCVC  \t|\t     Status        \t|\n"
  print "-----------------------------------------------------------------------------------------------------------------\n"

  array.each do |card|
    if card.name.length > 6
      print "|#{card.name}\t|\t#{card.number}\t|\t #{card.expiration}  \t|\t#{card.cvc}\t|   #{card.status}   |\n"
    else
      print "|#{card.name}\t\t|\t#{card.number}\t|\t #{card.expiration}  \t|\t#{card.cvc}\t|   #{card.status}   |\n"
    end
  end

  print "-----------------------------------------------------------------------------------------------------------------\n"
end

# Tests

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

show(cards)