my_var = '成功'

MyClass = Class.new do
  puts "クラス定義の中：#{my_var}"

  define_method :my_method do
    puts "メソッド定義の中：#{my_var}"
  end
end

MyClass.new.my_method
