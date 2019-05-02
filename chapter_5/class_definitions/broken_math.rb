class Fixnum
  alias_method :origin_plus, :+

  def +(number)
    origin_plus(number).origin_plus(1)
  end
end

puts 10 + 1
