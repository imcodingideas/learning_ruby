# abecedario = ('A'..'Z').last(20)
# p que_sera = Array.new(3) { abecedario.pop(2) }
#
# [{"Name"=>"Rodrigo García", "Age"=>13, "Gender"=>"Male", "Group"=>"First", "Qualifications"=>[9, 9, 7, 6, 8]}

puts 'Array to Hash'
puts

table =
    [%w(Name Age Gender Group Qualifications),
     ['Rodrigo García', 13, 'Male', 'First', [9, 9, 7, 6, 8] ] ,
     ['Fernanda Gonzalez', 12, 'Female', 'Third', [6, 9, 8, 6, 8] ] ,
     ['Luis Perez', 13, 'Male', 'First', [8, 7, 7, 9, 8] ] ,
     ['Ana Espinosa', 14, 'Female', 'Second', [9, 9, 6, 8, 8] ] ,
     ['Pablo Moran', 11, 'Male', 'Second', [7, 8, 9, 9, 8] ] ]


def create_hash(table)
  table[1..-1].reduce([]) do |new_table, row|
    new_table << table[0].zip(row).to_h
  end
end

p create_hash(table)
puts

puts "gato"

def tick_tack_toe

  count_X = 0
  count_O = 0

  (0..4).each do |line|
    (0..4).each do |column|
      if (line == 0 || line == 2 || line == 4) && (column == 1 || column == 3)
        print '  |  '
      elsif line == 1 || line == 3
        print '-----'
      elsif (line == 0 || line == 2 || line == 4) && (column != 1 || column != 3)
        random_value = rand(2)

        if random_value == 0
          count_X += 1
          random_value = 'X'
        else
          count_O += 1
          random_value = 'O'
        end


        if count_O >= 5
          random_value = 'X'
        elsif count_X >= 5
          random_value = 'O'
        else
          random_value
        end

        print "  #{random_value}  "
      end
    end
    puts ''
  end
end

tick_tack_toe