module Printable
  def print
    'Printable#print'
  end

  def prpare_cover
  end
end

module Document
  def print_to_screen
    prpare_cover
    format_for_screeen
    print
  end

  def format_for_screeen

  end

  def print
    'Document#print'
  end
end

class Book
  include Document
  include Printable
end

# b = Book.new
# puts b.print_to_screen
