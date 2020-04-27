# arr = [3,5,1,2,7,9,8,13,25,32]
# puts arr.reduce(:+)

# def puzzle_1(arr)
#     arr.reject! { |num| num <= 10 }
#     return arr
# end

# puts puzzle_1(arr)

# arr = ['John', 'KB', 'Oliver', 'Cory', 'MAthhew', 'Christopher']
# print arr.shuffle!
# puts arr.reject! { |name| name.length <=5 }

# alphabet = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
# vowels = ['a','e','i','o','u']
# alphabet.shuffle!
# puts alphabet.last
# puts alphabet.first
# puts "first letter is a vowel" if vowels.include?(alphabet[0])

# arr = []
# for i in 1..10
#     arr.push rand(55..100)
# end
# print arr
# arr.sort!
# print arr
# puts arr.min
# puts arr.max

# str=''
# for i in 1..5
#     str += (65+rand(26)).chr
# end
# puts str

# arr = []
# for i in 1..10
#     str=''
#     for i in 1..5
#         str += (65+rand(26)).chr
#     end
#     arr.push(str)
# end
# print arr