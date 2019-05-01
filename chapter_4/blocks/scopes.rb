v1 = 1
class MyClass
  v2 = 2
  puts "1:#{local_variables}"
  def my_method
    v3 = 3
    puts "2:#{local_variables}"
  end
  puts "3:#{local_variables}"
end

puts "--------------"
obj = MyClass.new
puts obj.my_method
puts obj.my_method
puts "4:#{local_variables}"
