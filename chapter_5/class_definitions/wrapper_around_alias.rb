class String
  alias_method :real_length, :length
  
  def length
    real_length > 5 ? 'long' : 'short'
  end

  def first_char
    self[0]
  end

  alias_method :fc, :first_char
end

puts "War and Peace".length
puts "War and Peace".real_length
puts "War and Peace".first_char
