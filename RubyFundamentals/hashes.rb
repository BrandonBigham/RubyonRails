new_hash = {first_name:"brandon", last_name:"bigham", age:19}
new_hash.delete(:age)
print new_hash
puts new_hash.empty?
puts new_hash.has_key?(:first_name)
puts new_hash.has_key?(:age)
puts new_hash.has_value?('brandon')