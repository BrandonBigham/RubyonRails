# arr = ["I", "code", "therefore", "I", "am"]
# for i in 0...arr.count
#   puts arr[i]
# end

# 3.times { puts "WOW" }

# puts 24.class    # => Fixnum
# puts true.class  # => TrueClass
# puts nil.class   # => NilClass

# puts "string".reverse # => "gnirts"
# puts 23.odd?          # => true
# puts "abc".upcase     # => "ABC"

# puts 24 + 8

def say_hello name1, name2
  if name1.empty? or name2.empty?
    return "Who are you?!"
  end
  # Doesn't reach the last line because we used return
  "hello, #{name1} and #{name2}"
end
puts say_hello "", ""
