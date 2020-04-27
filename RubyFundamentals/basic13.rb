# for i in 1..255
#     puts(i)
# end

# for i in 1..255
#     if i%2 !=0
#         puts(i)
#     end
# end

# def print_sum
#     sum = 0
#     for i in 0..255
#         sum+=i
#         puts "new num: #{i} sum: #{sum}"
#     end
# end
# puts(print_sum)

# x = [1,3,5,7,9,13]
# x.each {|i| print i, ", "}

# arr = [-1,-3,-5,-7,-9,-13]
# puts(arr.max)

# arr = [1,3,5,7,9,13]
# sum = 0
# for i in 0..arr.count-1
#     sum+=arr[i]
# end
# avg = sum/arr.count
# puts avg

# print (1..255).find_all {|i| i%2!=0}

# def greater_than(arr, y)
#     count = 0
#     arr.each { |i| count +=1 if i > y }
#     return count
#   end
  
#   puts greater_than([1,3,5,7,9,13], 6)

# arr = [1,3,5,7,9,13]
# arr.map! {|i| i*i}
# print arr

# arr = [1,3,-5,7,-9,13]
# arr.each_index { |i| arr[i] = 0 if arr[i] < 0 }
# puts arr

# def min_max_avg(arr)
#     return {min: arr.min, max: arr.max, average: arr.reduce(:+)/arr.length}
#   end
  
# puts min_max_avg([1,3,5,7,9,13])