class MyClass
  def my_method
    'original my method'
  end

  def another_method
    my_method
  end
end

module MyClassRefinements
  refine MyClass do
    def my_method
      'refined my method'
    end
  end
end


using MyClassRefinements
puts MyClass.new.my_method
puts MyClass.new.another_method
