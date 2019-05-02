class C
  def a_method
    'C#a_method'
  end

  class << self
    def a_class_method
      'C.a_class_method()'
    end
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

puts C.singleton_class
puts D.singleton_class
puts D.singleton_class.superclass
puts C.singleton_class.superclass
puts '---'
puts obj.singleton_class.ancestors
