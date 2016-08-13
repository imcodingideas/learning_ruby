def odd_indexed(arr)
  arr.select.each_with_index do |value, index|
    value if index % 2 != 1
  end
end

def long_strings(arr)
a = []
arr.select { |str| a << str if str.length > 4 }
a
end

def start_with_h(arr)
  arr.select { |value| value if value[0] == "h" }
end

def capitalize_array(arr)
  a = []
  arr.select { |value| a << value.capitalize }
  a
end

def group_by_starting_letter(arr)
  arr.group_by{|k| k}
end

def number_of_r(str)
end

# Tests

p odd_indexed(["uno", "dos", "tres", "cuatro", "cinco"]) == ["uno", "tres", "cinco"]
p long_strings(["rojo", "morado", "azul", "negro", "blanco", "naranja"]) == ["morado", "negro", "blanco", "naranja"]
p start_with_h(["manzana", "naranja", "sandia", "higo", "melon", "platano"]) == ["higo"]
p capitalize_array(["manuel", "juan", "rodrigo", "ana", "paola"]) == ["Manuel", "Juan", "Rodrigo", "Ana", "Paola"]
p group_by_starting_letter(["arbol", "amarillo", "angel", "burro", "barco"]) #== {"a"=>["arbol", "amarillo", "angel"], "b"=>["burro", "barco"]}
#p number_of_r ( "ferrocarril" )  #==  4