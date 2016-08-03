my_array = [1,2,3,4,5,6,7,8,9]
new_array = Array.new

my_array.each do |n|
  new_array.push(n += 20)
end

p new_array