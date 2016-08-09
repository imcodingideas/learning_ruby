=begin
Create the total_shopping_budget method that receives these parameters:

An Array with expenses.
Minimum purchase.
Maximum purchase.

And how many expenses Array returns are less than 30 and are between the minimum and maximum purchase purchase.
=end

def total_shopping_budget(*args)

end

# Tests
p total_shopping_budget([10.50, 20.20, 30.10, 40.56, 50.13, 60.45], 20, 30) == 1
p total_shopping_budget([18.30, 19.12, 20.21, 23.56, 24.78, 27.32], 20, 27) == 3