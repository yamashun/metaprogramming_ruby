class Computer
  def initialize(computer_id, data_source)
    @id = computer_id
    @data_source = data_source
    data_source.methods.grep(/^get_(.*)_info$/) { Computer.define_component $1 }
  end

  def self.define_component(name)
    define_method(name) do
      info = @data_source.send "get_#{name}_info", @id
      price = @data_source.send "get_#{name}_price", @id
      result = "#{name.capitalize}: #{info} (#{price})"
      return "* #{result}" if price >= 100
      result
    end
  end
end


class MouseData
  def initialize(name, price)
    @name = name
    @price = price
  end

  def get_mouse_info(id)
    @name
  end
  def get_mouse_price(id)
    @price
  end
end

c = Computer.new(1, MouseData.new('mouse', 100))
puts c.mouse
