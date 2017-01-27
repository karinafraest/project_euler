=begin
A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
Find the largest palindrome made from the product of two 3-digit numbers.

1. Get the product of all three digit numbers (nested loops)
2. Check each number to see if they are palindromes(.to_s.split  .reverse)
3. Check for the largest palindrome
=end

#define the first 3-digit numbers
product=0
i=1000
j=1000
largest=0

#create a loop to multiply all 3-digit numbers
for i in 100..1000
  for j in 100..1000
    product=i*j
    #check for palindrome
    product_check=product.to_s.split(//) #splits number and converts it to an array
    backward =product_check.reverse #reverses the array
    if product_check==backward #checks if the number is a palindrome
      if product>largest #checks for largest palindrome 
        largest=product
      end
    end
    j-=1
  end
  i-=1
end
puts "#{largest} is the largest palindrome made from the product of two 3-digit numbers"
  