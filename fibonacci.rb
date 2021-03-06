=begin
  Even Fibonacci numbers
  Each new term in the Fibonacci sequence is generated by
  adding the previous two terms. By starting with 1 and 2
  the first 10 terms will be 
  1 2,3,5,8,13,21,34,55,89
  By considering the terms in the Fibonacci sequence whose values do not 
    exceed four million find the sum of the even-valued terms

1. Write a method whose parameter is the number of terms needed
2. Write a loop that will retrieve the fibonacci sequence (each term is the addition of the previous two)
3. Create a loop that will add any even-valued term to a fib_even_number variable. 

=end
#creates a method that receives as a paremet the number of terms desired.
def fib(num_terms) 
  last=0 #last value on the fibonacci sequence
  current=1 #last value plus itself
  term=0
  fib_even_number=0 #sum of even-valued numbers
  i=0 
  
  until i==num_terms #loop to retrieve fibonacci numbers
    term=last+current
    if i ==0 #esthetic if to have a fist term with no extra comma
      print "#{term}"
    else
      print ", #{term}"
    end #if
    if term%2==0 #loop to retrieve even-valued numbers and add them
      fib_even_number+=term
    end #if
    last=current
    current=term
    i+=1
  end #until
  print "\n The sum of the even-valued numbers is: #{fib_even_number}"
end #method
  
=begin
  until current>=num
    if last==0 && current==0
      print "#{new}" #will print new=0
      current+=1
      print ",#{current}"
    else
      new=last+current
      print ",#{new}"
      if new%2==0 
        fib_even_number=fib_even_number+new
      end 
      last=current
      current=new
    end 
  end
  print "\n#{fib_even_number}\n"
end
=end

fib(10)