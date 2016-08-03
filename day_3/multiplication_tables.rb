=begin
Create the multiplication_tables method receives parameter as an integer,
and prints the multiplication tables from 1 to the number you pass it.

Format multiplication tables as in the example:

multiplication_tables(5)
=>
1    2    3    4    5    6    7    8    9    10
2    4    6    8    10   12   14   16   18   20
3    6    9    12   15   18   21   24   27   30
4    8    12   16   20   24   28   32   36   40
5    10   15   20   25   30   35   40   45   50
=end

def multiplication_tables(num)
	for i in (1..num) do
		for j in (1..10) do
			solve = i * j
			print "#{solve}\t"
		end
		puts "\n"
	end
end

multiplication_tables(5)