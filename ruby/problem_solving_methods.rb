#Release 0
array = [45, 67, 87, 1]
def sort_array (array, num)
index = 0
while index < array.length 
    if array[index] == num
    puts index
    index += 1
    
    else
        index +=1
    end
end
puts "nil"
end
    
sort_array(array, 999)

#other option

def search_array (arr, number)

   count=0
   arr.each do |integer|
       if integer == number
           return count
               break
           end
           count += 1

   end
   return nil
end

new_arr = [1,2,3,4,5]
p search_array(new_arr,2)
p search_array(new_arr, 22)

#release 1 Calculate Fibonacci numbers
def fib(number)
	arr = [0,1]
	if num == 0
			arr = [0]
		elsif num == 1
			arr = [0,1]
		else
			counter = 2
			while counter < num
				arr[counter]= arr[counter - 2] + arr[counter -1]
				counter += 1
			end
		end
		return arr
end

p fib(6)
# => [0, 1, 1, 2, 3, 5]
p fib(100)[-1] == 218922995834555169026
# => true

#Release 2 Implement sorting algorithm
# cannot get this one to work, because index keeps breaking.
=begin
new_array = [1, 66, 10, 43, 20]
def sort_bubble(array)
   index = 0
   while index < 12
       if array[index] > array[index+1]
           puts array
           array[index], array[index+1] = array[index+1], array[index]
           puts array
           index += 1
       else
           index += 1
       end
   end
end
=end

def bubblesort(array)
     swapped = true
     length = array.length-1
     while swapped do
         i = 0
         swapped = false
         while i <length
             n = i +1
             if array[i] > array[n]
                 dummy = array[i]
                 array[i]= array[n]
                 array[n] = dummy  
                 swapped = true
             end
            i+=1
         end
     end
     return array
end



array = [12, 55, 4, 1, 0]
bubblesort(array)





#Insetion array

array = [1, 3, 5, 8, 4, 6, 7, 9, 2]
i = 0
j = 1
key = 0

while j < array.length

    key = array[j] 
    i = j - 1

    while (array[i] > key) && (i >= 0)
        array[i + 1] = array[i]         
        i -= 1 
    end


    array[i + 1] = key

    j += 1 
end


puts array













