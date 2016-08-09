# def yield_name(name)
#   puts "In the method! Let's yield."
#   yield("Kim")
#   puts "In between the yields!"
#   yield(name)
#   puts "Block complete! Back in the method."
# end
#
# #yield_name("Eric") { |n| puts "My name is #{n}." }
#
# # Now call the method with your name!
# yield_name("Joseph") { |n| puts "My name is #{n}"}

# def double(n)
#   yield n
# end
#
# double(2) { |n| n*=n }
#
# multiples_of_3 = Proc.new do |n|
#   n % 3 == 0
# end
#
# (1..100).to_a.select(&multiples_of_3)

# cube = Proc.new { |x| x ** 3 }
# p [1, 2, 3].collect!(&cube)
#
# p [4, 5, 6].map!(&cube)
#
# floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]
# # Write your code below this line!
#
# round_down = Proc.new {|n| n.to_i}
#
# # Write your code above this line!
# ints = floats.collect(&round_down)

# Here at the amusement park, you have to be four feet tall
# or taller to ride the roller coaster. Let's use .select on
# each group to get only the ones four feet tall or taller.

# group_1 = [4.1, 5.5, 3.2, 3.3, 6.1, 3.9, 4.7]
# group_2 = [7.0, 3.8, 6.2, 6.1, 4.4, 4.9, 3.0]
# group_3 = [5.5, 5.1, 3.9, 4.3, 4.9, 3.2, 3.2]
#
# # Complete this as a new Proc
# over_4_feet = Proc.new {|height| height >= 4}
#
# # Change these three so that they use your new over_4_feet Proc
# can_ride_1 = group_1.select(&over_4_feet)
# can_ride_2 = group_2.select(&over_4_feet)
# can_ride_3 = group_3.select(&over_4_feet)

# def greeter
#   puts yield
# end
#
# phrase = Proc.new { || "Hello there!"}
#
# greeter(&phrase)

# hi = Proc.new {puts "Hello!"}
# hi.call

# strings = ["1", "2", "3"]
# p nums = strings.map(&:to_i)

# numbers_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
#
# strings_array = numbers_array.map(&:to_s)

# strings = %w(leonardo donatello raphael michaelangelo)
# symbolize = lambda {|word| word.to_sym}
# symbols = strings.collect(&symbolize)

# my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]
#
# # Add your code below!
# symbol_filter = lambda {|i| i.is_a? Symbol}
# my_array.select(&symbol_filter)

# odds_n_ends = [:weezard, 42, "Trady Blix", 3, true, 19, 12.345]
#
# ints = odds_n_ends.select{|i| i.is_a? Integer}

# ages = [23, 101, 7, 104, 11, 94, 100, 121, 101, 70, 44]
# under_100 = Proc.new {|number| number < 100}
# youngsters = ages.select(&under_100)

# crew = {
#     captain: "Picard",
#     first_officer: "Riker",
#     lt_cdr: "Data",
#     lt: "Worf",
#     ensign: "Ro",
#     counselor: "Troi",
#     chief_engineer: "LaForge",
#     doctor: "Crusher"
# }
#
# first_half = lambda {|key, value| value < "M"}
#
# a_to_m = crew.select(&first_half)