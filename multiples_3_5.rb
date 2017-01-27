=begin
  If we list all the natural numbers below 10 that are multiples of 3 and 5,
  we get 3, 5,6, and 9. THe sum of these multiples is 23.
  Find the sum of all the multiples 3 or 5 below 1000.

  1. List all numbers from 0 to n
      Loop through the numbers. 
  2. Find the ones that are multiples of 3
  3. Find the ones that are multiples of 5
  4. Find the ones that are multiples of 3 and 5
  5. Add all of the multiples of 3, 5, and both from 0 to n.
  6. Check answer with n=1000
=end

#define a method that takes a parameter num.
def multiples_3_5(num)
  i=0 #counter
  sum=0 #sum of all multiples
  #loop that checks every number from 0 to num
  until i==num
    #if statement that checks if number is multiple
    if i%3==0
      sum+=i
      i+=1
    elsif i%5==0
      sum+=i
      i+=1
    else
      i+=1
    end #end if elsif else
  end #end until loop
  return sum
end #end method

multiples_3_5(1000)
