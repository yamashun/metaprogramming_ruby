class C
  def a_method
    'C#a_method'
  end
end

class D < C; end
obj = D.new
puts obj.a_method


class << obj
  def a_singleton_method
    'obj#a_singleton_method'
  end
end

puts obj.singleton_class.superclass
puts obj.a_singleton_method
